#include<iostream>
#include<regex>
#include<string>
#include<cstdlib>
#include<fstream>

using namespace std;


int main(int argc, char** argv){

    if (argc != 2){
        cout << "usage: " << argv[0] << " <filename>" << endl;
        return EXIT_FAILURE;
    }



    ifstream file(argv[1]);
    regex r("<a\\s+href\\s*=\\s*\"(\\S+)\"\\s*/>"); // parenthesis around (\\S+) to be able to find the hyperlink later
    string line;

    while (getline(file, line)){
        if (line.empty())
            continue;
        
        smatch match;
        while (regex_search(line, match, r)){
            cout << match.str(1) << endl; // 1 instead of 0 in order to print the hyperlink only

            line = match.suffix().str();
        }
    }

    file.close();
    return 0;
}