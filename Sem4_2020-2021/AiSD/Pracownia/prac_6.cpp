#include<bits/stdc++.h>
using namespace std;

struct edge{
    int a;
    int b;
    int weight;
};

struct {
    bool operator()(edge e1, edge e2) const { return e1.weight < e2.weight;}
} edge_comp;


int find_set(int x, int* p) {
    if (x != p[x])
        p[x] = find_set(p[x], p);
    return p[x];
}

void unify(int x, int y, int* p, int* rank) {
    x = find_set(x, p);
    y = find_set(y, p);

    if (rank[x] > rank[y])
        p[y] = x;
    else {
        p[x] = y;
        if (rank[x] == rank[y])
            rank[y]++;
    }
}

int main() {
    int edges, verts;
    cin >> verts >> edges;
    
    edge* edge_tab = new edge[edges];
    int* p = new int[verts];
    int* rank = new int[verts];
    
    for (int i = 0; i < edges; i++) 
        cin >> edge_tab[i].a >> edge_tab[i].b >> edge_tab[i].weight;
    sort(edge_tab, edge_tab + edges, edge_comp);

    for (int i = 0; i < verts; i++)
        p[i] = i;
    memset(rank, 0, sizeof(int)*verts);

    /*for (int i = 0; i < edges; i++) 
        cout << edge_tab[i].a << edge_tab[i].b << edge_tab[i].weight << endl;*/

    int cnt = 0;
    for (int i = edges - 1; i >= 0; i--) {
        int a = find_set(edge_tab[i].a, p);
        int b = find_set(edge_tab[i].b, p);
        if (a == b)
            continue;
        unify(a, b, p, rank);
        cnt++;
        if (cnt == verts - 1) {
            cout << edge_tab[i].weight << '\n';
            break;
        }
    }

    delete[] edge_tab;
    delete[] p;
    delete[] rank;
    return 0;
}