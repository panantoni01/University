/*
 * row-major vs. tiled texture queries
 *
 * Intel® Core™ i5-6600 CPU @ 3.30GHz
 *
 * $ ./texture -S 0xdeadc0de -t 65536 -v 0
 * Time elapsed: 1.707234 seconds.
 * $ ./texture -S 0xdeadc0de -t 65536 -v 1
 * Time elapsed: 1.031514 seconds.
 * $ ./texture -S 0xdeadc0de -t 65536 -v 2
 * Time elapsed: 0.935953 seconds.
 */
#include "texture.h"

static inline long index_0(long x, long y) {
  return y * N + x;
}

#define VARIANT 0
#include "texture_impl.h"

static inline long index_1(long x, long y) {
  int k = 6; // size of single tile equals 2^k
  long tmp = ((1<<k)-1);
  //long tmp_not = ~((1<<k)-1);
  long x_tile = x>>k;
  long y_tile = y>>k;
  long x_inside = x&tmp;
  long y_inside = y&tmp;


  long tile_adr = ((x_tile*N)<<k) + ((y_tile<<k)<<k);
  long inner_adr = (x_inside<<k) + y_inside;
  
  return tile_adr + inner_adr;
}

#define VARIANT 1
#include "texture_impl.h"
