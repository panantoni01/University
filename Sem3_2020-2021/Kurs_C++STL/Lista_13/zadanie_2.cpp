#include<iostream>
#include<thread>
#include<random>
#include<chrono>
#include<mutex>

using namespace std;

mutex mu;

void message(size_t sec){
    lock_guard<mutex> lock(mu);
    cout << "This program will terminate in " << sec << " seconds\n";
}

void sleep_and_notify_before(size_t total_sec, size_t sec_before){
    this_thread::sleep_for(chrono::seconds(total_sec - sec_before));
    message(sec_before);
    
    /* No need for this line below, because the "sleep" thread sleeps anyway and then calls join.
    This solution is better as we don't have a delay due to the exec time of "message" function */

    //this_thread::sleep_for(chrono::seconds(sec_before));
}

void sleep(size_t sec){
    this_thread::sleep_for(chrono::seconds(sec));
}

void execute_time(size_t sec){
    thread t1(sleep, sec);
    thread t2(sleep_and_notify_before, sec, 5);
    thread t3(sleep_and_notify_before, sec, 2);
    thread t4(sleep_and_notify_before, sec, 1);

    t1.join();
    t2.join();
    t3.join();
    t4.join();
}


int main(){
    execute_time(7);
    return 0;
}