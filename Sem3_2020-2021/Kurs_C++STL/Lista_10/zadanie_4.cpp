#include<iostream>
#include<experimental/filesystem>
#include<string>

using namespace std;
using namespace std::experimental::filesystem;

int main(int argc, char** argv){
    if (argc != 2){
        cerr << "usage: " << argv[0] << " <directory>\n";
        return EXIT_FAILURE;
    }

    path dir_name(argv[1]);

    if (!is_directory(dir_name)){
        cerr << "error: " << dir_name << " is not a directory\n";
        return EXIT_FAILURE;
    }

    for (auto& entry : directory_iterator(dir_name)){
        cout << entry.path().filename().c_str() << endl;
    }

    return 0;
}