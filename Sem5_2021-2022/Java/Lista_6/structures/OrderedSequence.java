package structures;

import exceptions.*;

public interface OrderedSequence<T extends Comparable<T>> { 
    public void insert(T el) throws NullPointerException, NotDistinctException;
    public void remove(T el) throws EmptyException; // if `el` not found -> method has no effect
    public T min() throws EmptyException;
    public T max() throws EmptyException;
    public T at(int pos) throws ArrayIndexOutOfBoundsException, EmptyException;
    public boolean search(T el);
    public int index(T el) throws EmptyException; // if `el` in list return its index, else return -1
    public int size();
}