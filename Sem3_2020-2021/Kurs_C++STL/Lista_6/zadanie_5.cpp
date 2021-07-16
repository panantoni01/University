#include<iostream>
#include<algorithm>
#include<string>

using namespace std;


void print_permutations(string str){
    
    sort(str.begin(), str.end());
    
    do {
        cout<<str<<endl;
    } while (next_permutation(str.begin(),str.end()));
}

int main(){
    string example = "12dc";
    print_permutations(example);

    return 0;
}