#include<iostream>
#include<random>
#include<string>
#include<array>
#include<fstream>

using namespace std;

string letters = "etaoinsrhdlucmfywgpbvkxqjz";

constexpr array<int,26> frequencies = {21912,
16587,
14810,
14003,
13318,
12666,
11450,
10977,
10795,
7874,
7253,
5246,
4943,
4761,
4200,
3853,
3819,
3693,
3316,
2715,
2019,
1257,
315,
205,
188,
128,
};


string random_word(){
    static mt19937 generator1 { random_device{}() };
    static binomial_distribution<int> bin_dist { 12, 0.5 };
    size_t length = bin_dist(generator1);
    
    static default_random_engine generator2;
    static discrete_distribution<int> disc_dist {frequencies.begin(),frequencies.end()};

    string result;
    for (size_t i = 0; i < length; i++){
        int letter_number = disc_dist(generator2);
        result += letters[letter_number];
    }

    return result;
}

int main(int argc, char** argv){

    if (argc != 3){
        cout<<"Usage: ./zad3 number filename.txt"<<endl;
        return EXIT_FAILURE;
    }
    
    int number_of_words = atoi(argv[1]);
    string filename = argv[2];

    if (number_of_words < 0){
        cout<<"Text length must be a positive number!\n";
        return EXIT_FAILURE;
    }

    //=============================================

    ofstream file(filename);

    for (int i = 0; i < number_of_words; i++){
        file << random_word() << " ";
    }

    file.close();

    return 0;
}