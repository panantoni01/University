#include<iostream>
#include<algorithm>
#include<array>
#include<cstdlib>
#include<fstream>
#include<string>

using namespace std;

int letter_to_array_index (char x){
    if (x <= 'z' && x >= 'a'){
        return x-'a';
    }
    else if (x <= 'Z' && x >= 'A'){
        return x-'A';
    }
    else return 26;
}

int read_from_file(char* filename, array<int,27>& letter_occur){
    int all_letters = 0;
    fstream file(filename);
    while ( !file.eof() ){
        string word; file>>word;
        size_t l = word.length();
        all_letters += l;
        for (size_t i = 0; i < l; i++){
            letter_occur[letter_to_array_index(word[i])]++;
        } 
    }

    all_letters -= letter_occur[26]; // należy jeszcze odjąć liczbę wystąpień znaków innych niż litery

    file.close();
    return all_letters;
}


int main(int argc, char** argv){
    if (argc != 2){
        cout<<"Usage: ./zad4 file_name.txt"<<endl;
        exit(EXIT_FAILURE);
    }

    char* filename = argv[1];
    array<int,27> letter_occur = {0}; // 27 = 26 letters (upper/lower-case) + 1 other

    int letters = read_from_file(filename, letter_occur);

    array<double,26> letter_percentage = { 0.0 };
    for (size_t i = 0; i < letter_percentage.size(); i++){
        letter_percentage[i] = static_cast<double>(letter_occur[i])/static_cast<double>(letters);
    }
    
    string english_alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    
    for (size_t i = 0; i < letter_percentage.size(); i++){
        cout<<english_alphabet[i]<<":\t"<<letter_percentage[i]*100.0<<'%'<<endl;
    }
    //cout<<"Number of ther:\t"<<letter_percentage[26]*100.0<<'%'<<endl;
    
    return 0;
}