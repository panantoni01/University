#include<iostream>
#include<vector>
#include<set>
#include<list>
#include<string>
#include<iterator>
#include<algorithm>
#include<functional>
#include<utility>

template<class T>
std::function<void(T)> print_range(const T& min, const T& max){
    return [&] (const T& x){
        if ( x < max && x > min){
            std::cout<<x<<" ";
        }
    };
}

template<typename Coll>
auto sum(const Coll &vec, typename Coll::value_type init){
    std::for_each(vec.begin(),vec.end(),[&init](auto& elem){
        init += elem;
    });

    return init;
}

template<typename Coll>
auto min_max(const Coll &vec) {
    auto max = vec.begin();
    auto min = vec.begin();
    auto it = vec.begin();
    
    std::for_each(vec.begin(),vec.end(),[&max,&min,&it] (auto elem){
        if(elem < *min) min = it;
        else if (elem > *max) max = it;
        it++;
    });

    return std::pair{min,max};
} 

int main(){

    const std::vector<double> vec_double = {1.0, 1.4142, 1.618, 1.7320508, 3.1415};
    const std::list<std::string> list_string = { "first", "second","third", "fourth", "fifth", "sixth"};
    const std::set<int> set_int = { 2, 3, 5, 7, 11, 13, 17, 19, 23};

    std::cout<<"============================================\n";
    std::cout<<"ZADANIE 1.1:\n\n";

    std::for_each(vec_double.begin(),vec_double.end(), print_range(1.4,3.0));
    std::cout<<std::endl;
    std::for_each(list_string.begin(),list_string.end(), print_range<std::string>("f","si"));
    std::cout<<std::endl;
    std::for_each(set_int.begin(),set_int.end(), print_range(2,20));
    std::cout<<std::endl;

    std::cout<<"============================================\n";
    std::cout<<"ZADANIE 1.2:\n\n";
    
    size_t p = 1; size_t k = 2;
    
    std::for_each(vec_double.begin() + p, vec_double.end(), [k] (double elem){
        static size_t count = 0;
        if(count % k == 0){
            std::cout<<elem<<" ";
        }
        count++;
    });
    std::cout<<std::endl;


    auto it = list_string.begin();
    std::advance(it,p);
    std::for_each(it, list_string.end(), [k] (std::string elem){
        static size_t count = 0;
        if(count % k == 0){
            std::cout<<elem<<" ";
        }
        count++;
    });
    std::cout<<std::endl;

    auto it_int = set_int.begin();
    std::advance(it_int,p);
    std::for_each(it_int, set_int.end(), [k] (int elem){
        static size_t count = 0;
        if(count % k == 0){
            std::cout<<elem<<" ";
        }
        count++;
    });
    std::cout<<std::endl;


    std::cout<<"============================================\n";
    std::cout<<"ZADANIE 1.3:\n\n";

    auto sum_1 = sum<std::vector<double>>(vec_double,0.0);
    auto sum_2 = sum<std::set<int>>(set_int,0);

    std::cout<<"Średnia vec_double:\t"<<sum_1/vec_double.size()<<std::endl;
    std::cout<<"Średnia set_int:\t"<<sum_2/(double)set_int.size()<<std::endl;

    std::cout<<"============================================\n";
    std::cout<<"ZADANIE 1.4:\n\n";

    auto [min_double, max_double] = min_max<std::vector<double>>(vec_double);
    auto [min_string, max_string] = min_max<std::list<std::string>>(list_string);
    auto [min_int, max_int] = min_max<std::set<int>>(set_int);

    std::cout<<"Minimum z vec_double: "<<*min_double<<std::endl;
    std::cout<<"Maximum z vec_double: "<<*max_double<<std::endl;

    std::cout<<"Minimum z list_string: "<<*min_string<<std::endl;
    std::cout<<"Maximum z list_string: "<<*max_string<<std::endl;

    std::cout<<"Minimum z set_int: "<<*min_int<<std::endl;
    std::cout<<"Maximum z set_int: "<<*max_int<<std::endl;

    std::cout<<"============================================\n";
    std::cout<<"ZADANIE 1.5:\n\n";

    // Old version of concat :
    /*std::string concat = [](const std::list<std::string> &list){
        std::string sum;       
        for (auto elem : list){
            sum += elem;
        }
        return sum;
    }(list_string);*/


    std::string concat = sum<std::list<std::string>>(list_string, "");

    std::cout<<"Suma vec_double: "<<sum_1<<std::endl;
    std::cout<<"Suma set_int: "<<sum_2<<std::endl;
    std::cout<<"Suma list_string: "<<concat<<std::endl;


    return 0;
}

