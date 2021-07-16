/*
 * Antoni Pokusiński
 * 314942
 *
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  Blocks are never coalesced or reused.  The size of
 * a block is found at the first aligned word before the block (we need
 * it for realloc).
 *
 * This code is correct and blazingly fast, but very bad usage-wise since
 * it never frees anything.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
#define debug(...) printf(__VA_ARGS__)
#else
#define debug(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

#define WSIZE 4
typedef int32_t word_t; /* Heap is bascially an array of 4-byte words. */

typedef enum {
  FREE = 0,     /* Block is free */
  USED = 1,     /* Block is used */
  PREVFREE = 2, /* Previous block is free (optimized boundary tags) */
} bt_flags;

static word_t *heap_start; /* Address of the first block */
static word_t *heap_end;   /* Address past last byte of last block */
static word_t *last;       /* Points at last block */

/* --=[ boundary tag handling ]=-------------------------------------------- */

static size_t
round_up(size_t size) { // rounds up "size" to a number divisible by 16
  return (size + ALIGNMENT - 1) & -ALIGNMENT;
}

static inline word_t bt_size(word_t *bt) {
  return *bt & ~(USED | PREVFREE);
}

static inline int bt_used(word_t *bt) {
  return *bt & USED;
}

static inline int bt_free(word_t *bt) {
  return !(*bt & USED);
}

/* Given boundary tag address calculate it's buddy address. */
static inline word_t *bt_footer(word_t *bt) {
  return (void *)bt + bt_size(bt) - sizeof(word_t);
}

/* Given payload pointer returns an address of boundary tag. */
static inline word_t *bt_fromptr(void *ptr) {
  return (word_t *)ptr - 1;
}

/* Creates boundary tag(s) for given block. */
static inline void bt_make(word_t *bt, size_t size, bt_flags flags) {
  word_t *header = bt;
  *header = size | flags;

  word_t *footer = bt_footer(bt);
  *footer = size | flags;
}

/* Returns address of payload. */
static inline void *bt_payload(word_t *bt) {
  return bt + 1;
}

/* Returns address of next block or NULL. */
static inline word_t *bt_next(word_t *bt) {
  size_t size = bt_size(bt);
  if (bt_size((word_t *)((void *)bt + size)) == 0)
    return NULL;

  return (void *)bt + size;
}

/* Returns address of previous block or NULL. */
static inline word_t *bt_prev(word_t *bt) {
  size_t size = bt_size(bt - 1);
  if (size == 0)
    return NULL;

  return (void *)bt - size;
}

static void *morecore(size_t size) {
  void *ptr = mem_sbrk(size);
  if (ptr == (void *)-1)
    return NULL;
  return ptr;
}

/* Coalesce with previous block if it is free and return a pointer to coalesced
 * block */
static word_t *coalesce_with_prev(word_t *bt) {
  if (bt_prev(bt) == NULL)
    return bt;

  if (bt_used(bt_prev(bt)))
    return bt;

  size_t size = bt_size(bt) + bt_size(bt_prev(bt));
  word_t *new_bt = bt_prev(bt);

  bt_make(new_bt, size, FREE);

  if (bt == last)
    last = new_bt;

  return new_bt;
}

/* Coalesce with next block if it is free and return a pointer to coalesced
 * block */
static word_t *coalesce_with_next(word_t *bt) {
  if (bt_next(bt) == NULL)
    return bt;

  if (bt_used(bt_next(bt)))
    return bt;

  size_t size = bt_size(bt) + bt_size(bt_next(bt));

  if (bt_next(bt) == last)
    last = bt;

  bt_make(bt, size, FREE);

  return bt;
}

/* (modified) function taken from CSAPP; figure 9.44 */
static void *extend_heap(size_t words) {
  void *bt;
  size_t size;

  /* Allocate number of bytes, that is divisible by 16 to maintain alignment */
  size = round_up(words * WSIZE);
  if ((long)(bt = mem_sbrk(size)) == -1)
    return NULL;

  /* Initialize free block header/footer and the epilogue header */
  bt -= WSIZE;
  bt_make((word_t *)bt, size, FREE);

  word_t *guard = bt + size;
  *guard = 0 | USED; /* New epilogue header */
  heap_end = guard + 1;
  last = bt;

  /* Coalesce if the previous block was free */
  return coalesce_with_prev(bt);
}

/* --=[ mm_init ]=---------------------------------------------------------- */

int mm_init(void) {
  void *ptr = morecore(ALIGNMENT - WSIZE);
  if (!ptr)
    return -1;

  memset(ptr, 0, ALIGNMENT - WSIZE);

  word_t *first = morecore(WSIZE);
  if (!first)
    return -1;
  *first = 0 | USED; // create the epilogue block

  heap_start = first;
  heap_end =
    first + WSIZE; // this in fact is not necessary, as we set it in extend_heap
  last = first;    // this in fact is not necessary, as we set it in extend_heap

  extend_heap(getpagesize() / WSIZE);

  return 0;
}

#if 1
/* First fit startegy. */
static word_t *find_fit(size_t size) {
  word_t *ptr = heap_start;

  while (ptr != NULL) {
    if (bt_free(ptr) && bt_size(ptr) >= size) {
      if (bt_size(ptr) == size) {
        bt_make(ptr, size, USED);
      } else {
        size_t old_size = bt_size(ptr);
        bt_make(ptr, size, USED);
        bt_make((void *)ptr + size, old_size - size, FREE);

        if (last == ptr)
          last = (void *)ptr + size;
      }

      return ptr;
    }
    ptr = bt_next(ptr);
  }

  return NULL;
}
#else
/* Best fit startegy. (improvement from 64.8% to 65.0% but worse ipo: 31161 to
 * 29515)*/
static word_t *find_fit(size_t size) {
  word_t *ptr = heap_start;

  word_t *best = NULL;
  size_t best_size = 0xffffffffffffffff;

  while (ptr != NULL) {
    if (bt_free(ptr) && bt_size(ptr) >= size) {
      if (bt_size(ptr) == size) {
        bt_make(ptr, size, USED);
        return ptr;
      } else if (bt_size(ptr) < best_size) {
        best_size = bt_size(ptr);
        best = ptr;
      }
    }
    ptr = bt_next(ptr);
  }

  if (best != NULL) {
    bt_make(best, size, USED);
    bt_make((void *)best + size, best_size - size, FREE);

    if (last == best)
      last = (void *)best + size;

    return best;
  }

  return NULL;
}
#endif

/*
 * malloc - Allocate a block by find_fit function.
 *      If no free block was found, use extend_heap.
 * Always allocate a block whose size is a multiple of the alignment.
 */
void *malloc(size_t size) {
  /* Need to round up the size, so that it is divisible by 16 */
  size = round_up(size + 2 * WSIZE);

  word_t *first_try = find_fit(size);
  if (first_try != NULL)
    return bt_payload(first_try);

  if (bt_free(last))
    extend_heap((size - bt_size(last)) / WSIZE);
  else
    extend_heap(size / WSIZE);

  word_t *second_try = find_fit(size);
  if (second_try != NULL)
    return bt_payload(second_try);
  else
    return NULL;
}

/*
 * free - Make the block free by changing the bt, and coalesce with
 * neighbours if needed
 */
void free(void *ptr) {
  if (ptr == NULL)
    return;

  word_t *bt = bt_fromptr(ptr);
  bt_make(bt, bt_size(bt), FREE);

  bt = coalesce_with_next(bt);
  bt = coalesce_with_prev(bt);
}

/*
 * realloc - Change the size of the block by mallocing a new block,
 *      copying its data, and freeing the old block.
 **/
void *realloc(void *old_ptr, size_t size) {
  if (size == 0) {
    free(old_ptr);
    return NULL;
  }

  /* If old_ptr is NULL, then this is just malloc. */
  if (!old_ptr)
    return malloc(size);

  void *new_ptr = malloc(size);

  /* If malloc() fails, the original block is left untouched. */
  if (!new_ptr)
    return NULL;

  /* Copy the old data */
  word_t *bt_old = bt_fromptr((word_t *)old_ptr);
  size_t old_size = bt_size(bt_old);
  if (size < old_size)
    old_size = size;
  memcpy(new_ptr, old_ptr, old_size);

  /* Free the old block. */
  free(old_ptr);

  return new_ptr;
}

/*
 * calloc - Allocate the block and set it to zero.
 */
void *calloc(size_t nmemb, size_t size) {
  size_t bytes = nmemb * size;
  void *new_ptr = malloc(bytes);

  return new_ptr;
}

/*
 * mm_checkheap - So simple, it doesn't need a checker!
 */
void mm_checkheap(int verbose) {
}
