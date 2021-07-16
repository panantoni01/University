#include<iostream>
#include<cstdint>
#include<string>

using namespace std;

enum class Name : uint16_t{
    Anna,
    Bronislaw,
    Cezary,
    Dariusz
};
void task4(string message, Name name){
    cout<<"Zadanie 4:\n\n";
    switch(name){
        case Name::Anna:
            cout<<"Message to Anna: "<<message<<endl;
            break;
        case Name::Bronislaw:
            cout<<"Message to Bronislaw: "<<message<<endl;
            break;
        case Name::Cezary:
            cout<<"Message to Cezary: "<<message<<endl;
            break;
        case Name::Dariusz:
            cout<<"Message to Dariusz: "<<message<<endl;
            break;
        default:
            cout<<"Passed wrong name!\n";
    }
    cout<<"=============================\n";
}

int main(){
    task4("Hello!", Name::Dariusz);
    return 0;
}