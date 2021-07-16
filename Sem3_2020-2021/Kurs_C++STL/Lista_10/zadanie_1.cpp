#include<iostream>
#include<cmath>
#include<vector>
#include<iterator>
#include<algorithm>
#include<iomanip>
#include<type_traits>

using namespace std;

template<typename T>
double arith_mean(vector<T>& vec){
    static_assert(is_arithmetic<T>::value, "Invalid data type !\n");
    
    double sum = 0.0; 
    for (auto &num : vec){
        sum += num;
    }

    return sum / static_cast<double>(vec.size());
}

template<typename T>
double std_deviation(vector<T>& vec){
    static_assert(is_arithmetic<T>::value, "Invalid data type !\n");

    double ar_mean = arith_mean<T>(vec);
    double sum = 0.0;
    
    for (const auto num : vec){
        double tmp = num - ar_mean;
        sum += tmp * tmp;
    }

    return sqrt( sum / static_cast<double>(vec.size()) );
}

int main(){
    vector<double> numbers;

    istream_iterator<double> cin_it(cin);
    istream_iterator<double> eof;

    copy(cin_it, eof, back_inserter(numbers));

    cout << fixed << setprecision(3);
    cout << "Arithmetic mean: " << arith_mean<double>(numbers) << endl;
    cout << "Standard deviation: " << std_deviation<double>(numbers) << endl;


    return 0;
}