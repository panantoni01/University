#include<stdio.h>
#include<math.h>

typedef float type;

type f(type x){
    type result = (x - sin(x))/(x*x*x);
    //printf("%e      ",sin(x));

    result *= 12120;

    return result;
}

int main(){
    for (int i = 11; i <= 20; i++){
        type arg = pow(10,-i);
        printf("10^(-%d):   %f\n",i,f(arg));
    }

    return 0;
}