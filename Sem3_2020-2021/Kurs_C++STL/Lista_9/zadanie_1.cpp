#include<iostream>
#include<regex>
#include<string>


using namespace std;

int main(){

    string input;
    cin >> input;

    cout << regex_match( 
        input,
        regex("([0-1][0-9]|2[0-3])(:[0-5][0-9]){1,2}$"))
    << endl;

    return 0;
}