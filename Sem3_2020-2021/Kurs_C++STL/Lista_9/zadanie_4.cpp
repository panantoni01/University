#include<iostream>
#include<regex>
#include<string>
#include<cstdlib>

using namespace std;


int main(){
    string input;
    getline(cin, input);

    cout << regex_match(
        input,
        regex("[-]?[0-9]+(\\.[0-9]+)?\\s*[+-]\\s*[0-9]+(\\.[0-9]+)?[iI]$")
    ) << endl;

    return 0;
}