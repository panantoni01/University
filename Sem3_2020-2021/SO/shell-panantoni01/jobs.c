#include "shell.h"

typedef struct proc {
  pid_t pid;    /* process identifier */
  int state;    /* RUNNING or STOPPED or FINISHED */
  int exitcode; /* -1 if exit status not yet received */
} proc_t;

typedef struct job {
  pid_t pgid;            /* 0 if slot is free */
  proc_t *proc;          /* array of processes running in as a job */
  struct termios tmodes; /* saved terminal modes */
  int nproc;             /* number of processes */
  int state;             /* changes when live processes have same state */
  char *command;         /* textual representation of command line */
} job_t;

static job_t *jobs = NULL;          /* array of all jobs */
static int njobmax = 1;             /* number of slots in jobs array */
static int tty_fd = -1;             /* controlling terminal file descriptor */
static struct termios shell_tmodes; /* saved shell terminal modes */

static void sigchld_handler(int sig) { //
  int old_errno = errno;
  pid_t pid;
  int status;
  /* DONE: Change state (FINISHED, RUNNING, STOPPED) of processes and jobs.
   * Bury all children that finished saving their status in jobs. */

  /* iterate over the jobs* and proc* tables to mark jobs that have finished;
  for each process, check if anything happend to it*/
  for (size_t i = 0; i < njobmax; i++) {
    job_t *curr_job = &jobs[i];
    if (curr_job->pgid == 0)
      continue; // 0 signifies empty slot, so move on...

    bool is_any_running = false;
    bool is_any_stopped = false;

    for (size_t j = 0; j < curr_job->nproc; j++) {
      proc_t *curr_proc = &curr_job->proc[j];

      if (curr_proc->state == FINISHED)
        continue; // don't waitpid for a process if it had finished...

      pid = Waitpid(curr_proc->pid, &status, WNOHANG | WUNTRACED | WCONTINUED);

      if (pid > 0) { // if process changed its status
        if (WIFSIGNALED(status) ||
            WIFEXITED(status)) { // terminated by a signal or exited normally
          curr_proc->state = FINISHED;
          curr_proc->exitcode = status;
        } else if (WIFCONTINUED(status)) { // received SIGCONT
          curr_proc->state = RUNNING;
        } else if (WIFSTOPPED(status)) { // stopped by signal
          curr_proc->state = STOPPED;
        }
      }

      if (curr_proc->state == RUNNING)
        is_any_running = true;
      if (curr_proc->state == STOPPED)
        is_any_stopped = true;
    }

    /* A job is RUNNING if any of its processes is running,
     the same with STOPPED.
     If all of its processes have FINISHED, then the job is FINISHED */
    if (is_any_running)
      curr_job->state = RUNNING;
    else if (is_any_stopped)
      curr_job->state =
        STOPPED; // really? ... (1h of debbuging just to add one "else")
    else
      curr_job->state = FINISHED;
  }

  (void)status;
  (void)pid;
  errno = old_errno;
}

/* When pipeline is done, its exitcode is fetched from the last process. */
static int exitcode(job_t *job) {
  return job->proc[job->nproc - 1].exitcode;
}

static int allocjob(void) {
  /* Find empty slot for background job. */
  for (int j = BG; j < njobmax; j++)
    if (jobs[j].pgid == 0)
      return j;

  /* If none found, allocate new one. */
  jobs = realloc(jobs, sizeof(job_t) * (njobmax + 1));
  memset(&jobs[njobmax], 0, sizeof(job_t));
  return njobmax++;
}

static int allocproc(int j) {
  job_t *job = &jobs[j];
  job->proc = realloc(job->proc, sizeof(proc_t) * (job->nproc + 1));
  return job->nproc++;
}

int addjob(pid_t pgid, int bg) {
  int j = bg ? allocjob() : FG;
  job_t *job = &jobs[j];
  /* Initial state of a job. */
  job->pgid = pgid;
  job->state = RUNNING;
  job->command = NULL;
  job->proc = NULL;
  job->nproc = 0;
  job->tmodes = shell_tmodes;
  return j;
}

static void deljob(job_t *job) {
  assert(job->state == FINISHED);
  free(job->command);
  free(job->proc);
  job->pgid = 0;
  job->command = NULL;
  job->proc = NULL;
  job->nproc = 0;
}

static void movejob(int from, int to) {
  assert(jobs[to].pgid == 0);
  memcpy(&jobs[to], &jobs[from], sizeof(job_t));
  memset(&jobs[from], 0, sizeof(job_t));
}

static void mkcommand(char **cmdp, char **argv) {
  if (*cmdp)
    strapp(cmdp, " | ");

  for (strapp(cmdp, *argv++); *argv; argv++) {
    strapp(cmdp, " ");
    strapp(cmdp, *argv);
  }
}

void addproc(int j, pid_t pid, char **argv) {
  assert(j < njobmax);
  job_t *job = &jobs[j];

  int p = allocproc(j);
  proc_t *proc = &job->proc[p];
  /* Initial state of a process. */
  proc->pid = pid;
  proc->state = RUNNING;
  proc->exitcode = -1;
  mkcommand(&job->command, argv);
}

/* Returns job's state.
 * If it's finished, delete it and return exitcode through statusp. */
int jobstate(int j, int *statusp) {
  assert(j < njobmax);
  job_t *job = &jobs[j];
  int state = job->state;

  /* DONE: Handle case where job has finished. */
  if (state == FINISHED) {
    *statusp = exitcode(job);
    deljob(job);
  }

  (void)exitcode;

  return state;
}

char *jobcmd(int j) {
  assert(j < njobmax);
  job_t *job = &jobs[j];
  return job->command;
}

/* Continues a job that has been stopped. If move to foreground was requested,
 * then move the job to foreground and start monitoring it. */
bool resumejob(int j, int bg, sigset_t *mask) {
  if (j < 0) {
    for (j = njobmax - 1; j > 0 && jobs[j].state == FINISHED; j--)
      continue;
  }

  if (j >= njobmax || jobs[j].state == FINISHED)
    return false;

  /* DONE: Continue stopped job. Possibly move job to foreground slot. */

  /* Hopefully good place for this message... */
  msg("[%d] continue '%s'\n", j, jobs[j].command);

  if (bg == FG) {
    movejob(j, FG);
    Kill(-jobs[FG].pgid, SIGCONT);

    monitorjob(mask);
  } else if (bg == BG) {
    Kill(-jobs[j].pgid, SIGCONT);
  }

  (void)movejob;

  return true;
}

/* Kill the job by sending it a SIGTERM. */
bool killjob(int j) {
  if (j >= njobmax || jobs[j].state == FINISHED)
    return false;
  debug("[%d] killing '%s'\n", j, jobs[j].command);

  /* DONE: I love the smell of napalm in the morning. */
  if (jobs[j].pgid == 0)
    return false;

  Kill(-jobs[j].pgid, SIGTERM);
  Kill(-jobs[j].pgid, SIGCONT);

  return true;
}

/* Report state of requested background jobs. Clean up finished jobs. */
void watchjobs(int which) {
  for (int j = BG; j < njobmax; j++) {
    if (jobs[j].pgid == 0)
      continue;

    /* DONE: Report job number, state, command and exit code or signal. */
    job_t *job = &jobs[j];

    if (which != ALL && job->state != which)
      continue;

    int _exitcode = exitcode(job);

    switch (job->state) {
      case FINISHED:
        if (WIFSIGNALED(_exitcode)) {
          msg("[%d] killed '%s' by signal %d\n", j, job->command,
              WTERMSIG(_exitcode));
        } else if (WIFEXITED(_exitcode)) {
          msg("[%d] exited '%s', status=%d\n", j, job->command,
              WEXITSTATUS(_exitcode));
        }

        deljob(job);
        break;

      case STOPPED:
        msg("[%d] suspended '%s'\n", j, job->command);
        break;

      case RUNNING:
        msg("[%d] running '%s'\n", j, job->command);
        break;
    }

    (void)deljob;
  }
}

/* Monitor job execution. If it gets stopped move it to background.
 * When a job has finished or has been stopped move shell to foreground. */
int monitorjob(sigset_t *mask) {
  int exitcode = 0, state;

  /* DONE: Following code requires use of Tcsetpgrp of tty_fd. */

  Tcsetpgrp(tty_fd, jobs[FG].pgid);

  do {
    Sigsuspend(mask); // here we should step into SIGCHLD handler
    state = jobstate(FG, &exitcode);

    /* If job has been stopped, move it to background in jobs array */
    if (state == STOPPED) {
      int back = addjob(0, true);
      movejob(FG, back);
    }
  } while (state != FINISHED && state != STOPPED);

  Tcsetpgrp(tty_fd, getpgrp());

  (void)exitcode;
  (void)state;

  return exitcode;
}

/* Called just at the beginning of shell's life. */
void initjobs(void) {
  Signal(SIGCHLD, sigchld_handler);
  jobs = calloc(sizeof(job_t), 1);

  /* Assume we're running in interactive mode, so move us to foreground.
   * Duplicate terminal fd, but do not leak it to subprocesses that execve. */
  assert(isatty(STDIN_FILENO));
  tty_fd = Dup(STDIN_FILENO);
  fcntl(tty_fd, F_SETFD, FD_CLOEXEC);

  /* Take control of the terminal. */
  Tcsetpgrp(tty_fd, getpgrp());

  /* Save default terminal attributes for the shell. */
  Tcgetattr(tty_fd, &shell_tmodes);
}

/* Called just before the shell finishes. */
void shutdownjobs(void) {
  sigset_t mask;
  Sigprocmask(SIG_BLOCK, &sigchld_mask, &mask);

  /* DONE: Kill remaining jobs and wait for them to finish. */
  for (int i = BG; i < njobmax; i++) {
    /* Go forward if the job hasn't been killed  */
    if (!killjob(i))
      continue;

    /* Need to update jobs array if the job has finished */
    if (jobs[i].state != FINISHED) {
      Sigsuspend(&mask);
    }
  }

  watchjobs(FINISHED);

  Sigprocmask(SIG_SETMASK, &mask, NULL);

  Close(tty_fd);
}
