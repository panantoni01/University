#include<iostream>
#include<experimental/filesystem>
#include<string>

using namespace std;
using namespace std::experimental::filesystem;


int main(int argc, char** argv){
    if (argc < 2){
        cout << "usage: " << argv[0] << " <path1> <path2> ..." << endl;
        return EXIT_FAILURE;
    }

    for (int i = 1; i < argc; i++){
        path file_name(argv[i]);
        
        if (!exists(file_name)){
            cout << file_name << " doesn't exist!" << endl;
            continue;
        } 
        cout << canonical(file_name) << endl;
            
        if (is_regular_file(file_name))
            cout << "\tregular file\n";
        else if (is_directory(file_name))
            cout << "\tdirectory\n";
        else
            cout << "\tother file type\n";
        
        auto ftime = last_write_time(file_name); 
        time_t cftime = decltype(ftime)::clock::to_time_t(ftime);
        cout << "\tlast modification time: " << asctime(localtime(&cftime));
        
        if (is_regular_file(file_name))
            cout << "\tfile size: " << file_size(file_name) << endl;
    }

    return 0;
}