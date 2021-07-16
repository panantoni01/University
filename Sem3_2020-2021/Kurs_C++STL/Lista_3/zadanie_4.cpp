#include<iostream>
#include<type_traits>

using namespace std;

template<typename F, typename T, 
    typename = enable_if_t<is_convertible<F,T>::value>
    >
T& move_object_impl(F& from, T& to,false_type){
    to = std::move(from);
    std::cout<<"Non-pointer version\n";
    return to;
}

template<typename F, typename T, 
    typename = enable_if_t<is_convertible<remove_pointer_t<F>,T>::value>
    >
T& move_object_impl(F& from, T& to,true_type){
    to = std::move(*from);
    std::cout<<"Pointer version\n";
    return to;
}

template<typename F,typename T,
    typename = enable_if_t<is_convertible<remove_pointer_t<F>,T>::value>
    >
T& move_object(F& from, T& to){
    return move_object_impl(from,to,is_pointer<F>());
}

int main(){
    
    int a = 2020; float b = 365.0;
    move_object(a,b); 
    std::cout<<a<<std::endl<<b<<std::endl;

    
    std::string *s1 = new std::string("father");
    std::string s2 = "mother"; 

    move_object(s1,s2);

    std::cout<<*s1<<std::endl<<s2<<std::endl;

    delete s1;
    return 0;
}