#include<iostream>

using namespace std;

template<long N, long K>
class binomial {
    public:
    long operator() () const{
        return binomial<N,K-1>()() * (N-K+1)/K;
    }
};

template<long N>
class binomial<N,0> {
    public:
    long operator() () const{
        return 1;
    }
};

template<long N>
class binomial<N,N> {
    public:
    long operator() () const{
        return 1;
    }
};


int main(){
    long result =  binomial<1000000,2>()();
    cout << result << endl;
    return 0;
}