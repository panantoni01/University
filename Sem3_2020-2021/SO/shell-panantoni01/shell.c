#include <readline/readline.h>
#include <readline/history.h>

#define DEBUG 0
#include "shell.h"

sigset_t sigchld_mask;

static sigjmp_buf loop_env;

static void sigint_handler(int sig) {
  siglongjmp(loop_env, sig);
}

/* Rewrite closed file descriptors to -1,
 * to make sure we don't attempt do close them twice. */
static void MaybeClose(int *fdp) {
  if (*fdp < 0)
    return;
  Close(*fdp);
  *fdp = -1;
}

/* Consume all tokens related to redirection operators.
 * Put opened file descriptors into inputp & output respectively. */
static int do_redir(token_t *token, int ntokens, int *inputp, int *outputp) {
  token_t mode = NULL; /* T_INPUT, T_OUTPUT or NULL */
  int n = 0;           /* number of tokens after redirections are removed */

  for (int i = 0; i < ntokens; i++) {
    /* DONE: Handle tokens and open files as requested. */
    token_t curr_token = token[i];
    mode_t open_mode = S_IWUSR | S_IRUSR | S_IRGRP | S_IROTH;

    if (string_p(curr_token)) {
      if (mode == NULL) {
        n++;
        continue;
      } else if (mode == T_INPUT) {
        *inputp = Open(curr_token, O_RDWR, open_mode);
        mode = NULL;
      } else if (mode == T_OUTPUT) {
        *outputp = Open(curr_token, O_CREAT | O_RDWR, open_mode);
        mode = NULL;
      }
    } else if (curr_token == T_INPUT) {
      curr_token = T_NULL;
      mode = T_INPUT;
    } else if (curr_token == T_OUTPUT) {
      curr_token = T_NULL;
      mode = T_OUTPUT;
    }

    (void)mode;
    (void)MaybeClose;
  }

  token[n] = NULL;
  return n;
}

/* Execute internal command within shell's process or execute external command
 * in a subprocess. External command can be run in the background. */
static int do_job(token_t *token, int ntokens, bool bg) {
  int input = -1, output = -1;
  int exitcode = 0;

  ntokens = do_redir(token, ntokens, &input, &output);

  if (!bg) {
    if ((exitcode = builtin_command(token)) >= 0)
      return exitcode;
  }

  sigset_t mask;
  Sigprocmask(SIG_BLOCK, &sigchld_mask, &mask);

  /* DONE: Start a subprocess, create a job and monitor it. */
  pid_t pid = Fork();

  if (!pid) {
    // Attach default handlers to signals
    Signal(SIGTSTP, SIG_DFL);
    Signal(SIGTTIN, SIG_DFL);
    Signal(SIGTTOU, SIG_DFL);

    // Duplicate and then close file descriptors, if they've been changed by
    // do_redir
    if (input != -1) {
      Dup2(input, STDIN_FILENO);
      Close(input);
    }
    if (output != -1) {
      Dup2(output, STDOUT_FILENO);
      Close(output);
    }

    /* Just in case somebody types malicious "cd .. &"  ...
    or something like that*/
    if ((exitcode = builtin_command(token)) >= 0) {
      exit(exitcode);
    }
    // Call aproppiate command
    external_command(token);
  }

  // set the process group ID of the child; it should have separate process
  // group;
  Setpgid(pid, pid);

  // close file descriptors; if opened - they were opened for the child
  MaybeClose(&input);
  MaybeClose(&output);

  // add new job and new proc
  int new_job = addjob(pid, bg);
  addproc(new_job, pid, token);

  if (bg) {
    msg("[%d] running '%s'\n", new_job, jobcmd(new_job));
  } else {
    exitcode = monitorjob(&mask);
  }

  Sigprocmask(SIG_SETMASK, &mask, NULL);
  return exitcode;
}

/* Start internal or external command in a subprocess that belongs to pipeline.
 * All subprocesses in pipeline must belong to the same process group. */
static pid_t do_stage(pid_t pgid, sigset_t *mask, int input, int output,
                      token_t *token, int ntokens) {
  ntokens = do_redir(token, ntokens, &input, &output);

  if (ntokens == 0)
    app_error("ERROR: Command line is not well formed!");

  /* DONE: Start a subprocess and make sure it's moved to a process group. */
  pid_t pid = Fork();

  if (!pid) { // child process
    Sigprocmask(SIG_SETMASK, mask, NULL);

    // Attach default handlers to signals
    Signal(SIGTSTP, SIG_DFL);
    Signal(SIGTTIN, SIG_DFL);
    Signal(SIGTTOU, SIG_DFL);

    /* Connect input and output file descriptors */
    if (input != -1) {
      Dup2(input, STDIN_FILENO);
      Close(input);
    }

    if (output != -1) {
      Dup2(output, STDOUT_FILENO);
      Close(output);
    }

    int exitcode;
    if ((exitcode = builtin_command(token)) >= 0) {
      exit(exitcode);
    }

    external_command(token);
  }

  /* From man 2 setpgid:
    "If pgid is zero, then the PGID of the process specified by pid is
    made the same as its process ID."
    (First subprocess should form a new process group)*/
  Setpgid(pid, pgid);

  return pid;
}

static void mkpipe(int *readp, int *writep) {
  int fds[2];
  Pipe(fds);
  fcntl(fds[0], F_SETFD, FD_CLOEXEC);
  fcntl(fds[1], F_SETFD, FD_CLOEXEC);
  *readp = fds[0];
  *writep = fds[1];
}

/* Pipeline execution creates a multiprocess job. Both internal and external
 * commands are executed in subprocesses. */
static int do_pipeline(token_t *token, int ntokens, bool bg) {
  pid_t pid, pgid = 0;
  int job = -1;
  int exitcode = 0;

  int input = -1, output = -1, next_input = -1;

  mkpipe(&next_input, &output);

  sigset_t mask;
  Sigprocmask(SIG_BLOCK, &sigchld_mask, &mask);

  /* DONE: Start pipeline subprocesses, create a job and monitor it.
   * Remember to close unused pipe ends! */

  /* we need to iterate over tokens to divide them into parts;
  for each part we will do_stage */
  for (int i = 0; i < ntokens; i++) {
    int tmp_ntokens = 0;
    for (int j = i; token[j] != T_PIPE && token[j] != T_NULL; j++) {
      tmp_ntokens++;
    }

    bool is_first = (job == -1);
    bool is_last = (token[i + tmp_ntokens] == T_NULL);

    if (is_last) {
      output = -1;
    }

    /* If we deal with a middle process - make pipe between the present and the
     * next one */
    if (!is_last && !is_first) {
      mkpipe(&next_input, &output);
    }

    pid = do_stage(pgid, &mask, input, output, token + i, tmp_ntokens);

    /* We need to add job, while dealing with the first process  */
    if (is_first) {
      job = addjob(pid, bg);
      pgid = pid;
    }

    addproc(job, pid, &token[i]);

    MaybeClose(&input);
    MaybeClose(&output);

    /* Prepare input or the next stage */
    input = next_input;

    i += tmp_ntokens;
  }

  (void)input;
  (void)job;
  (void)pid;
  (void)pgid;
  (void)do_stage;

  if (bg) {
    msg("[%d] running '%s'\n", job, jobcmd(job));
  } else {
    exitcode = monitorjob(&mask);
  }

  /* MaybeClose(&output);
   MaybeClose(&input);
   MaybeClose(&next_input);*/

  Sigprocmask(SIG_SETMASK, &mask, NULL);
  return exitcode;
}

static bool is_pipeline(token_t *token, int ntokens) {
  for (int i = 0; i < ntokens; i++)
    if (token[i] == T_PIPE)
      return true;
  return false;
}

static void eval(char *cmdline) {
  bool bg = false;
  int ntokens;
  token_t *token = tokenize(cmdline, &ntokens);

  if (ntokens > 0 && token[ntokens - 1] == T_BGJOB) {
    token[--ntokens] = NULL;
    bg = true;
  }

  if (ntokens > 0) {
    if (is_pipeline(token, ntokens)) {
      do_pipeline(token, ntokens, bg);
    } else {
      do_job(token, ntokens, bg);
    }
  }

  free(token);
}

int main(int argc, char *argv[]) {
  rl_initialize();

  sigemptyset(&sigchld_mask);
  sigaddset(&sigchld_mask, SIGCHLD);

  if (getsid(0) != getpgid(0))
    Setpgid(0, 0);

  initjobs();

  Signal(SIGINT, sigint_handler);
  Signal(SIGTSTP, SIG_IGN);
  Signal(SIGTTIN, SIG_IGN);
  Signal(SIGTTOU, SIG_IGN);

  char *line;
  while (true) {
    if (!sigsetjmp(loop_env, 1)) {
      line = readline("# ");
    } else {
      msg("\n");
      continue;
    }

    if (line == NULL)
      break;

    if (strlen(line)) {
      add_history(line);
      eval(line);
    }
    free(line);
    watchjobs(FINISHED);
  }

  msg("\n");
  shutdownjobs();

  return 0;
}
