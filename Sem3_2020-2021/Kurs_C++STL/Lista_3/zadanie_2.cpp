#include<iostream>
#include<limits>

int main(){
    std::cout<<"Najbliższy 0 float: "<<std::numeric_limits<float>::min()<<std::endl;
    std::cout<<"Najbliższy 0 double: "<<std::numeric_limits<double>::min()<<std::endl;

    std::cout<<"\nNajwiększy float: "<<std::numeric_limits<float>::max()<<std::endl;
    std::cout<<"Największy double: "<<std::numeric_limits<double>::max()<<std::endl;

    std::cout<<"\nFloat: (1+\u03b5)-1 = "<<std::numeric_limits<float>::epsilon()<<std::endl;
    std::cout<<"Double: (1+\u03b5)-1 = "<<std::numeric_limits<double>::epsilon()<<std::endl;

    return 0;
}