package graphtools;

import java.io.*;
import java.util.*;

public class Graph implements Serializable {
    private List<Vertex> vertices = new ArrayList<>();
    private Set<Edge> edges = new TreeSet<>();
    
    public List<Vertex> getVertices() {
        return this.vertices;
    }
    public Set<Edge> getEdges() {
        return this.edges;
    }
    
    public Vertex findVertexByCoords(int x, int y) {
        for (Vertex vertex : vertices) {
            if (vertex.x == x && vertex.y == y)
                return vertex;
        }
        return null;
    }
    public void addVertex(int x, int y) { 
        int nr = vertices.size();
        this.vertices.add(new Vertex(nr, x, y));
    }
    public void delVertex(int n) { 
        Vertex v = vertices.remove(n);
        edges.removeIf(edge -> (edge.start.compareTo(v) == 0 || edge.end.compareTo(v) == 0));
        for (int i = n; i < vertices.size(); i++) {
            Vertex curr = vertices.get(i);
            curr.nr--;
            vertices.set(i, curr);
        }
    }
    public Edge findEdge(int u, int v) {
        Vertex v1 = vertices.get(u);
        Vertex v2 = vertices.get(v);
        
        for (Edge edge : edges) {
            if (edge.compareTo(new Edge(v1, v2)) == 0 || edge.compareTo(new Edge(v2, v1)) == 0)
                return edge;
        }
        return null;
    }
    public void addEdge(int u, int v) { 
        Vertex v1 = vertices.get(u);
        Vertex v2 = vertices.get(v);
        edges.add(new Edge(v1, v2));
    }
    public void delEdge(int u, int v) { 
        Edge tmp1 = new Edge(vertices.get(u), vertices.get(v));
        Edge tmp2 = new Edge(vertices.get(v), vertices.get(u));
        edges.removeIf(edge -> (edge.compareTo(tmp1) == 0 || edge.compareTo(tmp2) == 0));
    }

    public List<Vertex> findNeighList(int index) {
        Vertex v = this.vertices.get(index);
        List<Vertex> neighbours = new ArrayList<>();
        
        for (Edge edge: this.edges) {
            if (v.compareTo(edge.start) == 0) 
                neighbours.add(edge.end);
            else if (v.compareTo(edge.end) == 0)
                neighbours.add(edge.start);
        }

        return neighbours;
    }

    public String toString() {
        String result = String.valueOf(vertices.size());
        for (int i = 0; i < vertices.size(); i++) {
            result += "\n";
            result += String.valueOf(i) + ": " + findNeighList(i).toString(); 
        }
        return result;
    }
}