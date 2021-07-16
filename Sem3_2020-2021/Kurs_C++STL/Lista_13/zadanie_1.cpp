#include<iostream>
#include<thread>
#include<random>
#include<chrono>
#include<mutex>
#include<atomic>

using namespace std;

atomic_bool flag(false);
mutex mu, mu_r;

int random_number(){
    lock_guard<mutex> lock(mu_r);
    
    static mt19937 generator { random_device{}() };
    return uniform_int_distribution<int>{500, 1000}(generator);
}


void thread_func(){
    while (!flag){
        mu.lock();
        cout << this_thread::get_id() << endl;
        mu.unlock();
        this_thread::sleep_for(chrono::milliseconds(random_number())); 
    }
}

int main(){

    thread t1(thread_func);
    thread t2(thread_func);
    thread t3(thread_func);

    this_thread::sleep_for(chrono::milliseconds(10*1000));
    flag = true;

    t1.join();
    t2.join();
    t3.join();

    return 0;
}