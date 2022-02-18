package graphtools;

import java.io.*;

public class Edge implements Serializable, Comparable<Edge> {
    Vertex start, end;
    
    public Edge(Vertex start, Vertex end) {
        this.start = start;
        this.end = end;
    }
    public int compareTo(Edge e) {
        switch (start.compareTo(e.start)) {
            case -1: 
                return -1;
            case 1: 
                return 1;
            default: 
                return end.compareTo(e.end);
        }
    }

    public Vertex getStart() {
        return this.start;
    }
    public Vertex getEnd() {
        return this.end;
    }
}