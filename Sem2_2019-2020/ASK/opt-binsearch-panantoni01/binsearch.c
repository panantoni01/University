/*
 * Binary search with linearly placed tree levels.
 *
 * Intel® Core™ i5-6600 CPU @ 3.30GHz
 *
 * $ ./binsearch -S 0x5bab3de5da7882ff -n 23 -t 24 -v 0
 * Time elapsed: 7.616777 seconds.
 * $ ./binsearch -S 0x5bab3de5da7882ff -n 23 -t 24 -v 1
 * Time elapsed: 2.884369 seconds.
 */
#include "binsearch.h"

bool binsearch0(T *arr, long size, T x) {
  do {
    size >>= 1;
    T y = arr[size];
    if (y == x)
      return true;
    if (y < x)
      arr += size + 1;
  } while (size > 0);
  return false;

  /* WERSJA Z FUNKCJAMI BUILTIN: */
  
  /*do {
    size >>= 1;
    T y = arr[size];
    if (y == x)
      return true;
    long tmp = size>>1;
    __builtin_prefetch(arr+size+tmp);
    __builtin_prefetch(arr+size-tmp);
    if (__builtin_expect((y < x),1))
      arr += size + 1;
  } while (size > 0);
  return false;*/
}

void linearize(T *dst, T *src, long size) {
  long iter = size;
  long idx = 0;
  do{
    long tmp = iter + 1;
    iter >>= 1;
    for (int i = iter; i < size; i += tmp){
      dst[idx] = src[i];
      idx++;
    }
  }while(iter > 0);
}


bool binsearch1(T *arr, long size, T x) {
  long idx = 0;
  do{
    T tmp = arr[idx];
    if (x == tmp){
      return true;
    }
    idx <<= 1;
    idx += 1;
    if (x > tmp){
      idx += 1;
    }
  }while(idx < size);
  return false;
}
