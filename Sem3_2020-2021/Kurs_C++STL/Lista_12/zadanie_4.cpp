#include<iostream>
#include<type_traits>
#include<string>
using namespace std;


template<size_t N, typename T = double,
    typename = enable_if_t<is_arithmetic<T>::value>>
double inner_product(T *x, T *y){
    double result = 0.0;
    for (size_t i = 0; i < N; i++)
        result += x[i] * y[i];

    return result;
}


int main(){
    int tab1[5] = {1,2,3,4,5};
    int tab2[5] = {-1,-2,3,5,6};

    cout << inner_product<5,int>(tab1, tab2) << endl;

    /*string tab3[2] = {"a","b"};
    string tab4[2] = {"c","d"};

    cout << inner_product<2,string>(tab3, tab4) << endl;*/
    
    return 0;
}