#include<iostream>
#include<algorithm>
#include<random>
#include<array>

using namespace std;


template<class T, size_t length>
void my_random_shuffle(array<T,length>& array){
    static mt19937 generator { random_device{}() };

    for (size_t i = length-1; i != 0; i--){
        size_t j = uniform_int_distribution<size_t>{0, i}(generator);
        swap(array[i], array[j]);
    }
}


int main(){
    
    array<string,8> array = {"f","b","a","g","d","c","h","e"};
    for (size_t i = 0; i < array.size(); i++){
        cout<<array[i]<<" ";
    } cout<<endl;

    my_random_shuffle<string,8>(array);

    for (size_t i = 0; i < array.size(); i++){
        cout<<array[i]<<" ";
    } cout<<endl;

    return 0;
}



/*static std::random_device rd;
static std::mt19937 mt(rd());
static std::uniform_real_distribution<double> distribution(0.5,2.0);
return distribution(mt);*/