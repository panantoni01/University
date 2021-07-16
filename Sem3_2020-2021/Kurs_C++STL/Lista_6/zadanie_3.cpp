#include<iostream>
#include<algorithm>
#include<vector>
#include<array>

using namespace std;


int main(){

    vector<int> numbers = { 7, 3, 9, 0, 1, 3, 5, 7,	3, 6, 9, 8, 4, 7, 6};

    sort(numbers.begin(), numbers.end() );

    vector<pair<int,int>> number_freq_pair;
    
   int max_frequency = 0;

   for (auto it = numbers.begin(); it != numbers.end(); ){
       int current_number = *it;
       int counter = 0;
       while(it != numbers.end() && *it == current_number){
           counter++;
           it++;
       }
       if (counter > max_frequency){
           max_frequency = counter;
       }

       number_freq_pair.push_back(make_pair(current_number, counter));
   }

   for_each(number_freq_pair.begin(), number_freq_pair.end(),
   [&max_frequency] (pair<int,int>& num_freq){
       if ( num_freq.second == max_frequency){
           cout<<num_freq.first<<": "<<num_freq.second<<endl;
       }
   });

    return 0;
}