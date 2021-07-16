#include<iostream>
#include<string>
#include<cstdlib>

using namespace std;

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
    task7("15.10.2020");
    return 0;
}