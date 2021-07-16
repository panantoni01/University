#include<cstdint>
#include<iostream>

using namespace std;



auto Lucas(uint32_t n){
    if (n == 0){
        return 2;
    }
    else if (n == 1){
        return 1;
    }
    else return Lucas(n-1)+Lucas(n-2);
}
void task5(uint32_t n){
    cout<<"Zadanie 5:\n\n";
    cout<<Lucas(n)<<endl;
    cout<<"=============================\n";
}


int main(){
    task5(5);

    return 0;
}