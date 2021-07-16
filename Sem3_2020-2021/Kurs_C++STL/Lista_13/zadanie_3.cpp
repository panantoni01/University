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

void merge(int arr[], int start, int end, int mid){ // mid is and index of the last element of the first part
    int size_left = mid - start + 1;
    int size_right = end - mid;

    int* temp_arr = new int[size_left + size_right];

    int idx_l = start; int idx_r = mid + 1; int idx_tmp = 0;

    while (idx_l <= mid && idx_r <= end){
        if (arr[idx_l] < arr[idx_r]){
            temp_arr[idx_tmp] = arr[idx_l];
            idx_l++;
        }
        else {
            temp_arr[idx_tmp] = arr[idx_r];
            idx_r++;
        }
        idx_tmp++;
    }

    if (idx_l <= mid){
        while (idx_l <= mid){
            temp_arr[idx_tmp] = arr[idx_l];
            idx_tmp++;
            idx_l++;
        }
    }
    else {
        while (idx_r <= end){
            temp_arr[idx_tmp] = arr[idx_r];
            idx_tmp++;
            idx_r++;
        }
    }

    for (int i = start; i <= end; i++){
        arr[i] = temp_arr[i-start];
    }

    delete[] temp_arr;
}


void merge_sort(int arr[], int start, int end){
    if (start < end){
        int mid = (start + end)/2;
        /*merge_sort(arr, start, mid);
        merge_sort(arr, mid + 1, end);*/

        thread t_left(merge_sort, arr, start, mid);
        thread t_right(merge_sort, arr, mid+1, end);

        t_left.join();
        t_right.join();

        merge(arr, start, end, mid);
    }
}


int main(){

    const int size = 1<<12;

    int* tab = new int[size];
    for (size_t i = 0; i < size; i++)
        tab[i] = random_number();

    /*for (size_t i = 0; i < size; i++)
        cout << tab[i] << " ";
    cout << endl;*/

    merge_sort(tab,0,size-1);

    /*for (size_t i = 0; i < size; i++)
        cout << tab[i] << " ";
    cout << endl;*/

    delete[] tab;

    return 0;
}