/* Niekompletna implementacja zadania 5.
Brak poprawnej implementacji operatora indeksowania
dla struktury arr_in_file. */ 





#include<iostream>
#include<type_traits>
#include<array>
#include<typeinfo>
#include<fstream>
#include<string>
#include<experimental/filesystem>

using namespace std;
using namespace std::experimental::filesystem;

constexpr int on_heap_max = sizeof(string);
constexpr int arr_max = 128*1024;

template<typename T>
struct on_heap{ 
    private:
        T* p; 
    public:
        on_heap() : p(new T) {} 
        ~on_heap() { delete p; } 
        T& operator*() { return *p; }
        T* operator->() { return p; }
        on_heap(const on_heap&) = delete; 
        on_heap& operator=(const on_heap&) = delete;
};

template<typename T>
struct scoped{
    private:
        T x; 
    public:
        scoped() {}
        T& operator*() { return x; }
        T* operator->() { return &x; }
        scoped(const scoped&) = delete; 
        scoped& operator=(const scoped&) = delete;
};

template<typename T> 
struct obj_holder {
    using type = 
        typename conditional<
            (sizeof(T) <= on_heap_max) && !is_array<T>::value,
            scoped<T>, 
            on_heap<T>
        >::type;
};

template<typename T>
using Holder = typename obj_holder<T>::type;

//========================================================

template<typename T, size_t S>
class arr_in_file {
    private:
        size_t arr_size;
        string filename;
        fstream file;
    public:
        static size_t counter;
    public:
        arr_in_file() : arr_size(S / sizeof(T)) {
            /* Each file will correspond to one array, so lets make the filename unique */
            filename = "array_file_" + to_string(counter) + ".txt";
            file.open(filename, fstream::out); 
            file.open(filename, fstream::in);
            counter++;

            /* Fill the array with 0's - simply resize the file*/
            resize_file(filename, S);
        }
        ~arr_in_file() { file.close(); remove(filename.c_str()); }
        arr_in_file(const arr_in_file&) = delete; 
        arr_in_file& operator=(const arr_in_file&) = delete;

        size_t get_size() { return arr_size; }
        
        /* Of course this is not valid as we try to return reference
        to a local variable. But how can we return reference to a variable
        stored in a file ...? */
        T& operator[](int index) {
            T result;
            index *= sizeof(T);
            file.seekg(index, ios::beg);
            file >> result;
            file.seekg(0, ios::beg);
            return result;
        }
};

template<typename T, size_t S>
size_t arr_in_file<T,S>::counter = 0;

template<typename T, size_t S>
class arr_on_heap {
    private:
        size_t arr_size;
        T* arr;
    public:
        arr_on_heap() : arr_size(S / sizeof(T)), arr(new T[arr_size]) { /*cout << S << endl << typeid(T).name() << endl;*/ }
        ~arr_on_heap() { delete[] arr; }
        arr_on_heap(const arr_on_heap&) = delete; 
        arr_on_heap& operator=(const arr_on_heap&) = delete;

        size_t get_size() { return arr_size; }
        T& operator[](int index) { return arr[index]; }
};


template<typename T> 
struct arr_holder {
    using type =
        typename conditional<
            sizeof(T) <= arr_max,
            arr_on_heap<typename remove_all_extents<T>::type,sizeof(T)>,
            arr_in_file<typename remove_all_extents<T>::type,sizeof(T)>
        >::type;
};

template<typename T>
using Arr_holder = typename arr_holder<T>::type;

int main(){ 
    Holder<double> obj1;
    Holder<array<char,20>> obj2;

    Arr_holder<double[10]> arr1;
    arr1[0] = 3.14;
    arr1[9] = 1.618;
    for (size_t i = 1; i < arr1.get_size()-1 ; i++)
        arr1[i] = (double)i;

    for (size_t i = 0; i < arr1.get_size(); i++ )
        cout << arr1[i] << " ";
    cout << endl;

    Arr_holder<double[1024*1024]> arr2;
    /*  This will end up with segfault:
    arr2[1000] = 3.14; 
    */

    return 0;
}