#include<iostream>
#include<cstring>

using namespace std;
#define N 4



void print_matrix (int A[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) 
            cout << A[i][j] << " ";
        cout << endl;
    }
}

void calculate_LU(int A[N][N], int U[N][N], int L[N][N]) {
    
    for (int i = 0; i < N; i++) {
        /* Wypełniamy macierz górnotrójkątną (rzędami)*/
        for (int j = 0; j < N; j++) {
            if (j < i)
                continue;
            /* Najpierw liczymy sumę */
            int sum = 0;
            for (int k = 0; k <= i-1; k++)
                sum += L[i][k] * U[k][j];
            U[i][j] = A[i][j] - sum;
        }

        /* Wypełniamy macierz dolnotrójkątną (kolumnami)*/
        for (int j = 0; j < N; j++) {
            if (j < i)
                continue;
            /* Na przekątnej 1 */
            if (j == i){
                L[i][i] = 1;
                continue;
            }
            /* Najpierw liczymy sumę */
            int sum = 0;
            for (int k = 0; k <= i-1; k++)
                sum += L[j][k] * U[k][i];
            L[j][i] = (A[j][i] - sum) / U[i][i];
        }
    }
}

void print_multiply(int L[N][N], int U[N][N]){
    int A[N][N]; 
    memset(A, 0, sizeof(A));
    
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            int sum = 0;
            for (int k = 0; k < N; k++) {
                sum += L[i][k] * U[k][j];
            }
            A[i][j] = sum;
        }
    }
    print_matrix(A);
}

int main() {

    int A[N][N] = {
        {1, 1, 1, -10}, 
        {-1, -3, 0, 11}, 
        {-2, -10, 5, 25}, 
        {-3, -13, -16, 25}};
    
    print_matrix(A);

    int U[N][N];
    int L[N][N];
    memset(L, 0, sizeof(L));
    memset(U, 0, sizeof(U));
    //cout << sizeof(L) << " " << sizeof(U) << "\n";

    calculate_LU(A, U, L);

    cout << endl;
    print_matrix(U);
    cout<< endl;
    print_matrix(L);

    cout<< endl;
    print_multiply(L, U);

    return 0;
}