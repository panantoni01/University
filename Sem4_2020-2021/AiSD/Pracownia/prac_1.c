/* Antoni Pokusiński
314942
WJA */
#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

#define DEBUG
#ifdef DEBUG
#define debug(...) printf(__VA_ARGS__)
#else
#define debug(...)
#endif

typedef struct {
    long length;
    long how_many;
} rope_t;

long binsearch(rope_t arr[], long start, long end, long value) {
    if (start <= end) {
        long mid = (start + end)/2;
        if (value == arr[mid].length)
            return mid;
        else if (value < arr[mid].length)
            return binsearch(arr, start, mid - 1, value);
        else
            return binsearch(arr, mid + 1, end, value);
    }
    else
        return -1;
}

long ropes_finally(rope_t* rope_arr, long size) {
    long total = 0;
    for (int i = 0; i < size; i++) {
        if (rope_arr[i].how_many == -1)
            continue;
        long howmany = rope_arr[i].how_many;
        long length = rope_arr[i].length;
        int new_i = i;
        
        while (howmany > 0) {
            rope_arr[new_i].how_many = -1;
            total += howmany & 1;
            howmany = howmany / 2;
            length *= 2; 
            int idx = binsearch(rope_arr, new_i, size - 1, length);
            if (idx < 0)
                continue;
            howmany += rope_arr[idx].how_many;
            new_i = idx;
        } 
        /*while (howmany > 0) {
            total += howmany & 1;
            howmany /= 2;
        }*/
    }
    return total;
}

static void print_rope_arr(rope_t* rope_arr, long* size) { // debugging function 
    for (long i = 0; i < *size; i++) {
        printf ("%ld %ld\n", rope_arr[i].length, rope_arr[i].how_many);
    }
}

int compare(const void* a, const void* b) { // for qsort function
    rope_t* _a = (rope_t *) a;
    rope_t* _b = (rope_t *) b;
    if (_a->length < _b->length)
        return -1;
    if (_a->length == _b->length)
        return 0;
    return 1;
}

int main() {
    long size;
    scanf("%ld", &size);
    
    rope_t* rope_arr = malloc(size * sizeof(rope_t));

    for (long i = 0; i < size; i++)
        scanf("%ld %ld", &rope_arr[i].length, &rope_arr[i].how_many);

    //=================================
    
    qsort(rope_arr, size, sizeof(rope_t), compare);

    printf("%ld\n", ropes_finally(rope_arr, size));

    // print_rope_arr(rope_arr, &size);

    free(rope_arr);
    
    return 0;
}