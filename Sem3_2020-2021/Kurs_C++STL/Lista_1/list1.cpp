#include<iostream>
#include<set>
#include<cmath> 
#include<cstdint>
#include<string>
#include<cstdlib>

using namespace std;

void task1(){ // działa jedynie z flagą -trigraphs
    cout<<"Zadanie 1:\n\n"; 
    cout<<"??<";
    cout<<"??-"<<"??>"<<endl; 
    cout<<"=============================\n";
??>

void task3(){
    cout<<"Zadanie 3:\n\n";
    using zbior = set<string>;
    zbior A{"this","is","example","set"};
    for(auto s : A){
        cout<<s<<endl;
    } 
    cout<<"=============================\n";
}

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

auto Lucas(uint32_t n){
    if (n == 0){
        return 2;
    }
    else if (n == 1){
        return 1;
    }
    else return Lucas(n-1)+Lucas(n-2);
}
void task5(uint32_t n){
    cout<<"Zadanie 5:\n\n";
    cout<<Lucas(n)<<endl;
    cout<<"=============================\n";
}

void task6(double a, double b, double c){
    cout<<"Zadanie 6:\n\n";
    if (auto delta = b*b-4*a*c ; delta < 0.0){
        cout<<"Brak miejsc zerowych!\n";
    }
    else if (delta > 0.0){
        double pierw = sqrt(delta);
        cout<<"x1: "<<(-b-pierw)/(2.0*a)<<endl;
        cout<<"x2: "<<(-b+pierw)/(2.0*a);
    }
    else{
        cout<<"x: "<<(-b)/(2.0*a);
    }
    cout<<"\n=============================\n";
}


void task7(string data){        //format dd.mm.yyyy
    cout<<"Zadanie 7:\n\n";
    int dzien = atoi(data.substr(0,2).c_str());
    int rok = atoi(data.substr(6,4).c_str());
    string miesiac;
    switch(int month = atoi(data.substr(3,2).c_str()) ; month){
        case 1:
            miesiac = "stycznia";
            break;
        case 2:
            miesiac = "lutego";
            break;
        case 3:
            miesiac = "marca";
            break;
        case 4:
            miesiac = "kwietnia";
            break;
        case 5:
            miesiac = "maja";
            break;
        case 6:
            miesiac = "czerwca";
            break;
        case 7:
            miesiac = "lipca";
            break;
        case 8:
            miesiac = "sierpnia";
            break;
        case 9:
            miesiac = "wrzesnia";
            break;
        case 10:
            miesiac = "pazdziernika";
            break;
        case 11:
            miesiac = "listopada";
            break;
        case 12:
            miesiac = "grudnia";
            break;
        default:
            cout<<"Podano zly numer miesiaca!\n";
    }
    cout<<dzien<<" "<<miesiac<<" "<<rok<<endl;
    cout<<"=============================\n";
}


int main(){
    task1();
    task3();
    task4("Hello!",Name::Dariusz);
    task5(5);
    task6(1,-5,6);
    task7("15.10.2020");
    return 0;
}