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

    uint64_t total_size = 0;

    for (auto& entry : recursive_directory_iterator(dir_name)){
        if (is_regular_file(entry)){
            if (file_size(entry) > 1024*1024*1024*1024UL) // 1 TB
                cout << entry << " is too big file!\n";
            else
                total_size += static_cast<uint64_t>(file_size(entry));
        }
    }

    cout << "Total files size: " << total_size << " B" << endl;

    return 0;
}