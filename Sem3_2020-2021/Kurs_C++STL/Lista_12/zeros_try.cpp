#include<iostream>
#include<fstream>
#include<string>
#include<experimental/filesystem>

using namespace std;
using namespace std::experimental::filesystem;

int main(){

    string filename = "examp.txt";
    ofstream file(filename);

    resize_file(filename,1024);
    return 0;
}