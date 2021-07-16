#include<iostream>
#include<set>

using namespace std;



void task3(){
    cout<<"Zadanie 3:\n\n";
    using zbior = set<string>;
    zbior A{"this","is","example","set"};
    for(auto s : A){
        cout<<s<<endl;
    } 
    cout<<"=============================\n";
}

int main(){
    task3();
    return 0;
}