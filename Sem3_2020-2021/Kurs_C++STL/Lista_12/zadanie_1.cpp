#include<iostream>

using namespace std;

template<long N>
struct lucas{
  static constexpr long value = lucas<N-1>::value + lucas<N-2>::value;
};

template<>
struct lucas<0>{
  static constexpr long value = 2;
};

template<>
struct lucas<1>{
  static constexpr long value = 1;
};

int main()
{
    cout << lucas<70>::value << endl;
    return 0;
}