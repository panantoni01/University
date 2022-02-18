package graphtools;

import java.io.*;

public class Vertex implements Serializable, Comparable<Vertex> {
    int nr, x, y;
    
    public Vertex(int nr, int x, int y) {
        this.nr = nr;
        this.x = x;
        this.y = y;
    }
    public int compareTo(Vertex v) {
        return nr < v.nr ? -1 : nr > v.nr ? 1 : 0;
    }
    public String toString() {
        return String.valueOf(nr);
    }

    public int getNr() {
        return this.nr;
    }
    public int getX() {
        return this.x;
    }
    public int getY() {
        return this.y;
    }

    public void move(int x, int y) {
        this.x = x;
        this.y = y;
    }
}