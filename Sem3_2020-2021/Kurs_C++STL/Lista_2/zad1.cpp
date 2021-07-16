#include<iostream>
#include<memory>
#include<cstdint>
#include<random>

class Counter{
    public:
        uint64_t count = 1;
        
        virtual ~Counter(){ std::cerr<<"Counter value: "<<count<<std::endl; }
};

int random(int a, int b){
    static std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_int_distribution<int> distribution(a,b);
    return distribution(mt);
}

void add_numbers(
    std::unique_ptr<Counter[]> ptr,
    int m,
    int i,
    size_t length
) {
    if (m == i) return;
    for (size_t k=0; k<length; k++){
        if (int r = random(0,1) ; r){
            ptr[k].count += i;
        }
    }

    add_numbers(std::move(ptr),m,i+1,length);
}

int main(){
    int n = 8;
    int m = 10;
    auto arr_ptr = std::make_unique<Counter[]>(n);

    add_numbers(std::move(arr_ptr),m,1,n);

    return 0;
}

