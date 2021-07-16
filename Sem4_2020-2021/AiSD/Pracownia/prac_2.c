/* Antoni Pokusiński
314942
WJA */
#include<stdio.h>
#include<stdlib.h>
#include<limits.h>
#include<string.h>


int max(int a, int b){
    if ( a < b)
        return b;
    return a;
}

void findMax(int* A, int* S, int n, int sum){
    int T[2][sum+1];
    int result;

    for (int i = 0; i < 2; i++) 
        for (int j = 0; j < sum + 1; j++)
            T[i][j] = INT_MIN;
    
    
    T[0][0] = 0;
    for (int i = 1; i < n + 1; i++) {
        for (int j = 0; j <= S[i-1]; j++) {
            int old_i = i;

            i %= 2;
            int k = (i+1)%2;
            T[i][j] = max(T[i][j], T[k][j]);

            if (A[old_i-1] - j >= 0)
                T[i][j] = max(T[i][j], T[k][A[old_i-1] - j] + A[old_i-1] - j);
            
            if (A[old_i-1] + j <= S[old_i-2])
                T[i][j] = max(T[i][j], T[k][A[old_i-1] + j] + A[old_i-1]);

            if (j - A[old_i-1] >= 0)
                T[i][j] = max(T[i][j], T[k][j - A[old_i-1]]);

            i = old_i;
        } 
        if (i == n)
            result = max(T[0][0], T[1][0]);
    }

    if (result > 0){
        printf("TAK\n%d\n", result);
        return;
    }
    else {
        for (int i = 1; i < sum + 1; i++){
            if (T[0][i] > 0 || T[1][i] > 0){
                printf("NIE\n%d\n",i);
                return;
            }
        }
    }
}


int main () {
    int n;
    scanf("%d", &n);
    int sum = 0;
    
    int* A = malloc(sizeof(int) * n); // dane wejściowe
    int* S = malloc(sizeof(int) * n); // sumy częściowe: S[i] = sum(from j=0)(to i) of A[i]

    for (int i = 0; i < n; i++){
        scanf("%d", &A[i]);
        sum += A[i];
        S[i] = sum;
    }

    findMax(A,S,n,sum);

    free(A);
    free(S);
    return 0;
}