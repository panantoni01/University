#include<iostream>
#include<complex>
#include<cmath>

using namespace std;

constexpr double euler_masch = 0.5772156649;

complex<double> euler_gamma(complex<double> z, size_t iters){
    auto result = 1.0 / z; 
    
    for (size_t i = 1; i <= iters; i++){
        double double_i = static_cast<double>(i);
        result *= pow((1.0 + 1.0/double_i), z) / (1.0 + z/double_i);
    }

    return result;
}

complex<double> inverse_euler_gamma(complex<double> z, size_t iters){
    auto result = z * pow(M_E, z * euler_masch);

    for (size_t i = 1; i <= iters; i++){
        double double_i = static_cast<double>(i);
        result *=  ((1.0 + z / double_i) * pow(M_E, -(z / double_i)));
    }

    return result;
}

int main(){
    complex<double> test1 = 1.5;
    complex<double> test2 = 4.0;
    
    cout << "Γ("<< test1 << ") = " <<  euler_gamma(test1, 10000) << endl;
    cout << "Γ("<< test2 << ") = " <<  euler_gamma(test2, 10000) << endl;
    
    cout << "=========================\n\n";

    cout << "1 / Γ("<< test1 << ") = " <<  inverse_euler_gamma(test1, 10000) << endl;
    cout << "1 / Γ("<< test2 << ") = " <<  inverse_euler_gamma(test2, 10000) << endl;
    
    return 0;
}