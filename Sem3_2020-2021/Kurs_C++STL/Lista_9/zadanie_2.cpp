#include<iostream>
#include<regex>
#include<string>
#include<cstdlib>

using namespace std;


int main(){
    
    string input;
    cin >> input;

    cout << regex_match(input,
            regex("(((0[1-9]|1[0-9]|2[0-8])-(0[1-9]|1[0-2]))|((29|30)-(01|0[3-9]|1[0-2]))|(31-(01|03|05|07|08|10|12)))-(?!0000)([0-9]{4})"))
            << endl;

    return 0;
}