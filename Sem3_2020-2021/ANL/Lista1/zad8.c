#include<stdio.h>
#include<math.h>

#define eps 0.001

double deriv(double (* func)(double), double x){
    double res = (func(x+eps)-func(x))/eps;
    return res;
}
double deriv_better(double (* func)(double), double x){
    double res = (func(x+eps)-func(x-eps))/(2*eps);
    return res;
}

//================================================

double f1(double x){
    return pow(M_E,2*x);
}
double f2(double x){
    return (3*x - 0.5*sin(x))/sqrt(x);
}

int main(){
    puts("Pochodne f1(x)=e^(2x):\n");
    
    printf("Expected: %e\n",5.436564);
    printf("%e:\t%e\n",0.5,deriv(f1,0.5));
    printf("%e:\t%e\n",0.5,deriv_better(f1,0.5));

    printf("Expected: %e\n",2.004004);
    printf("%e:\t%e\n",0.001,deriv(f1,0.001));
    printf("%e:\t%e\n",0.001,deriv_better(f1,0.001));

    printf("Expected: %e\n",1.7772221e+7);
    printf("%e:\t%e\n",8.0,deriv(f1,8.0));
    printf("%e:\t%e\n",8.0,deriv_better(f1,8.0));
    
    puts("\nPochodne f2(x)=(3*x - 0.5*sin(x))/sqrt(x):\n");
    printf("Expected: %e\n",1.423542);
    printf("%e:\t%e\n",M_PI/3.0,deriv(f2,M_PI/3.0));
    printf("%e:\t%e\n",M_PI/3.0,deriv_better(f2,M_PI/3.0));

    printf("Expected: %e\n",1.7156e-02);
    printf("%e:\t%e\n",4096.0,deriv(f2,4096.0));
    printf("%e:\t%e\n",4096.0,deriv_better(f2,4096.0));

    printf("Expected: %e\n",14.14228);
    printf("%e:\t%e\n",(1.0/128.0),deriv(f2,(1.0/128.0)));
    printf("%e:\t%e\n",(1.0/128.0),deriv_better(f2,(1.0/128.0)));
    return 0;
}