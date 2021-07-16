#include<cstdio>
#include<limits>


int main(){
    puts("Long long int:");
    printf("Najwieksza: %lld\n",std::numeric_limits<long long int>::max());
    printf("Najmniejsza: %lld\n",std::numeric_limits<long long int>::min());

    puts("-------------------------\n");

    printf("Miejsc dziesietnych: %d\n",std::numeric_limits<long long int>::digits10);
    printf("Bitów (bez znaku): %d\n",std::numeric_limits<long long int>::digits);

    return 0;
}