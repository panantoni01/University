#include<list>
#include<vector>
#include<string>
#include<iostream>

using namespace std;


class Graph{
    private: 
        struct Vertex{
            int number;
            string name;

            Vertex(int number, string name) : number(number), name(name) {}
        };

        size_t W, K; // liczba wierzchołków i krawędzi
        
        /* wektor par wierchołek : lista sąsiednich wierzchołków,
        przy czym w liście sąsiednich wierzchołków dodajemy jeszcze wagi */
        vector < pair <Vertex, list< pair < Vertex, int >>  > > neigh_list;

    public: 
        Graph() { W = 0; K = 0;}
     
        /* oprócz liczby i napisu identyfikującego wierzchołek podajemy
        listę par wierzchołek : waga,
        która mówi nam z jakimi wierzchołkami będzie się łączył nowy wierzchołek */
        Vertex add_vertex(int number, string name, initializer_list<pair<Vertex,int>> vert_list){
            Vertex new_vertex(number, name);
            
            for (auto p : vert_list){
                
            }

            this->W++;

            return new_vertex;
        }
};

int main(){
    return 0;
}