#include<iostream>
#include<regex>
#include<string>
#include<cstdlib>

using namespace std;

int main(){

    string input;
    getline(cin,input);

    string word = "([[:upper:]]|Ą|Ę|Ó|Ś|Ł|Ż|Ź|Ć|Ń)([[:lower:]]|ą|ę|ó|ś|ł|ż|ź|ć|ń)+";

    string space_or_dash = "((\\s+)|\\-)" ;

    cout << regex_match(
        input,
        regex(word+"("+space_or_dash+word+")*")
    ) << endl;

    return 0;
}