#include<iostream>
using namespace std;

template<long A, long B>
class nwd {
    public:
    long operator() () const {
        return nwd<B, A % B>()();
    }
};

template<long A>
class nwd <A,0>{
    public:
    long operator() () const {
        return A;
    }
};

int main(){
    long result = nwd<48,36>()();
    cout << result << endl;
    return 0;
}