#include<iostream>
#include<ratio>
using namespace std;

/* 
    typedef ratio<1,1> one
    typedef ratio_add<one,ratio<1,2>> two
    typedef ratio_add<two,ratio<1,3>> three ... 
*/


template<int N>
class harmonic : public ratio_add<ratio<1,N>,harmonic<N-1>> {};

template<>
class harmonic<1> : public ratio<1,1> {};

int main(){
    const int n = 46; // dla wyższych n mamy: "error: static assertion failed: overflow in addition"
    std::cout<<"n="<<n<<" :\t"<<harmonic<n>::num<<"/"<<harmonic<n>::den<<std::endl;
    
    return 0;
}