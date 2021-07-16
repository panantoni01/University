#include<iostream>
#include<random>
#include<fstream>
#include<string>

#define COUNT 1000

using namespace std;



void generate_random_numbers(string filename1, string filename2, string filename3){
    static random_device rd;
    static mt19937 generator(rd());
    
    ofstream file1(filename1);
    ofstream file2(filename2);
    ofstream file3(filename3);
    
    static uniform_real_distribution<double> uni_dist{0.0, 1000.0};
    static binomial_distribution<int> bin_dist{1000, 0.5};
    static normal_distribution<double> norm_dist{100.0, 20.0};

    for (size_t i = 0; i < COUNT; i++){
        file1 << uni_dist(generator) << endl;
        file2 << bin_dist(generator) << endl;
        file3 << norm_dist(generator) << endl;
    }

    file1.close();
    file2.close();
    file3.close();
}


int main(){

    generate_random_numbers("uniform.csv","binomial.csv","normal.csv");
    return 0;
}