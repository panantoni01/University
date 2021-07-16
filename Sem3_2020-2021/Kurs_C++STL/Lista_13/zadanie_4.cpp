#include<iostream>
#include<thread>
#include<random>
#include<chrono>
#include<mutex>
#include<condition_variable>
#include<queue>

using namespace std;


int random_number(){
    static mt19937 generator { random_device{}() };
    return uniform_int_distribution<int>{0, 20}(generator);
}


template <typename T>
class Synchr_Buffer {
    private:
        mutex _mutex;
        condition_variable cond_var;

        size_t size; 
        queue<T> q;
        size_t current;

    private:
         bool is_full() { return current == size; }
         bool is_empty() { return current == 0; }
    
    public:
        Synchr_Buffer(size_t size) : size(size), current(0) {};
        Synchr_Buffer(const Synchr_Buffer&) = delete; 
        Synchr_Buffer& operator=(const Synchr_Buffer&) = delete;

        void add (T elem) {
            unique_lock<mutex> lock(_mutex);

            while(is_full())
                cond_var.wait(lock, [this]() { return !is_full(); });
            
            q.push(elem);
            current++;
            cout << "Produced, current = " << current << endl;

            cond_var.notify_one();
        }
        T pop() {
            unique_lock<mutex> lock(_mutex);

            while(is_empty())
                cond_var.wait(lock, [this]() { return !is_empty(); });

            T popped = q.front();
            
            q.pop();
            current--;
            
            cout << "Consumed, current = " << current << endl;
            
            cond_var.notify_one();

            return popped;
        }
};

void produce(Synchr_Buffer<int>& buf){
    for (size_t i = 0; i < 200; i++){
        buf.add(random_number());
    }
}
void consume(Synchr_Buffer<int>& buf){
    for (size_t i = 0; i < 200; i++){
        buf.pop();
    }
}

int main(){
    Synchr_Buffer<int> buffer(7);
    thread prod(produce, ref(buffer));
    thread cons(consume, ref(buffer));

    prod.join();
    cons.join();
    return 0;
}