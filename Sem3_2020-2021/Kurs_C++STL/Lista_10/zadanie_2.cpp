#include<iostream>
#include<iterator>
#include<cstdlib>
#include<fstream>
#include<cassert>
#include<vector>
#include<algorithm>

using namespace std;

bool are_coprime(int a, int b){
    while (b > 0){
        int tmp = b;
        b = a%b;
        a = tmp;
    }
    
    if ( a == 1 )
        return true;

    return false;
}

int euler_totient(int n){
    assert(n > 0);

    int sum = 0;
    for (int i = 1; i <= n; i++){
        if (are_coprime(i, n))
            sum++;
    }

    return sum;
}

int main(int argc, char** argv){
    if (argc != 2){
        cout << "usage: " << argv[0] << " <integer>" << endl;
        return EXIT_FAILURE;
    }

    int k = atoi(argv[1]);
    vector<int> vec;

    for (int i = 1; i <= k; i++)
        vec.push_back(euler_totient(i));

    ofstream file("phi.txt");
    ostream_iterator<int> out_it(file, "; ");

    copy(vec.begin(), vec.end(), out_it);

    return 0;
}