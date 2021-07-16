/* Antoni Pokusiński
314942
WJA */
#include<stdio.h>
#include<stdbool.h>
int main() {
    int a,b;
    scanf("%d %d", &a, &b);
    int counter = a;
    while ( (counter++ % 2021) != 0);
    counter--;
    while (counter <= b) {
        printf("%d ",counter);
        counter += 2021;
    }
    return 0;
}