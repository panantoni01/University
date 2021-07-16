#include<iostream>
#include<memory>
#include<cstdint>

class Counter{
    public:
        uint64_t count = 1;
        
        virtual ~Counter(){ std::cerr<<"Counter value: "<<count<<std::endl; }
};

int main(){
    std::weak_ptr<Counter> w_ptr;
    {
        auto s_ptr = std::make_shared<Counter>();
        w_ptr = s_ptr;
        if(std::shared_ptr<Counter> s_ptr1 = w_ptr.lock()){
            std::cout<<s_ptr1->count<<std::endl;
        }
        else{
            std::cout<<"Unable to access the resources!"<<std::endl;
        }
    }
    if(std::shared_ptr<Counter> s_ptr1 = w_ptr.lock()){
        std::cout<<s_ptr1->count<<std::endl;
    }
    else{
        std::cout<<"Unable to access the resources!"<<std::endl;
    }
    return 0;
}