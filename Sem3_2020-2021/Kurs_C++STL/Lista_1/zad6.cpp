#include<iostream>
#include<cmath>

using namespace std;

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

int main(){
    task6(1,-5,6);
    return 0;
}