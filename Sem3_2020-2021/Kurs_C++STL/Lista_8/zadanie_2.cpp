#include<iostream>
#include<complex>
#include<cmath>
#include<fstream>

using namespace std;

complex<double> euler_gamma(complex<double> z, size_t iters){
    auto result = 1.0 / z; 
    
    for (size_t i = 1; i <= iters; i++){
        double double_i = static_cast<double>(i);
        result *= pow((1.0 + 1.0/double_i), z) / (1.0 + z/double_i);
    }

    return result;
}



complex<double> Riemann_zeta(complex<double> z, size_t iters){
    complex<double> result = 0.0;
    
    if (z.real() > 1) {
        for (size_t i = 1; i <= iters; i++)
            result += pow(1.0 / static_cast<double>(i), z);
        
        return result;
    }
    else if (z.real() > 0) {
        for (size_t i = 1; i <= iters; i++){
            if (i % 2 == 1) result += pow(1.0 / static_cast<double>(i), z);
            else result -= pow(1.0 / static_cast<double>(i), z);
        }

        return result / (1.0 - 2.0 / pow(2.0, z));
    }
    else {
        result = pow(2.0, z)
            * pow(M_PI, z - 1.0)
            * sin(M_PI * z / 2.0)
            * euler_gamma(1.0 - z, iters)
            * Riemann_zeta(1.0 - z, iters);
             
        return result;
    }

}



int main(){
    constexpr size_t n = 500;
    constexpr double begin = -25.0;
    constexpr double end = 25.0;
    constexpr double d = (end - begin) / n;

    constexpr size_t iters = 1000;

    ofstream file("data.csv");

    double current = begin;
    for (size_t i = 0; i < n; i++){
        complex<double> arg(0.5, current);
        complex<double> result = Riemann_zeta(arg, iters);
        
        file << current << ',' << result.real() << ',' << result.imag() << endl;

        current += d;
    }

    file.close();
    return 0;
}