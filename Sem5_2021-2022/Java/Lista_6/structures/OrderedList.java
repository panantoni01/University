package structures;

import exceptions.EmptyException;
import exceptions.NotDistinctException;
import java.util.Iterator;

public class OrderedList <T extends Comparable<T>>  
implements OrderedSequence<T>, Iterable<T> { 
    private class Node <U extends Comparable<U>> { 
        private Node<U> next; 
        private U data; 
        
        public Node(U elem) {
            this.data = elem;
            this.next = null;
        }
        public Node(U elem, Node<U> next) {
            this.next = next;
            this.data = elem;
        }
        public U getData() {
            return this.data;
        }
        public Node<U> getNext() {
            return this.next;
        }

        public void insert(U el) throws NotDistinctException{
            if (el.compareTo(this.data) > 0) {
                if (this.next == null) 
                    this.next = new Node<U>(el);
                else
                    this.next.insert(el);
            }
            else if (el.compareTo(this.data) < 0) {
                this.next = new Node<U>(this.data, this.next);
                this.data = el;
            }
            else
                throw new NotDistinctException("element already in the structure");
        }
        public void remove(U el, Node<U> prev) {
            if (this.data.equals(el)) {
                prev.next = this.next;
                return; 
            }
            if (this.next == null)
                return;
            else
                this.next.remove(el, this);
        }
        public U max() {
            if (this.next == null)
                return this.data;
            return this.next.max();
        }
        public U at(int pos) throws ArrayIndexOutOfBoundsException{
            if (pos == 0)
                return this.data;
            if (this.next == null)
                throw new ArrayIndexOutOfBoundsException("trying to read out of array bounds");
            return this.next.at(pos - 1);
        }
        public boolean search(U el) {
            if (this.data.equals(el))
                return true;
            if (this.next == null)
                return false;
            return this.next.search(el);
        }
        public int index(U el) {
            if (this.data.equals(el))
                return 0;
            if (this.next == null)
                return -1;
            int res = this.next.index(el);
            if (res == -1)
                return -1;
            return 1 + res;
        }
        public int size() {
            if (this.next == null)
                return 1;
            return 1 + this.next.size();
        }

        @Override
        public String toString() {
            if (this.next == null)
                return this.data.toString() + " ]";
            else
                return this.data.toString() + ", " + this.next.toString();
        }
    } 
    private Node<T> head;
    
    public OrderedList() {
        this.head = null;
    }
    public Node<T> getHead() {
        return head;
    }
    
    public void insert(T el) throws NullPointerException, NotDistinctException {
        if (el == null)
            throw new NullPointerException("inserting null element");
        if (this.head == null) 
            this.head = new Node<T>(el); 
        else 
            this.head.insert(el);
    }
    public void remove(T el) throws EmptyException {
        if (this.head == null)
            throw new EmptyException("empty list");
        if (this.head.data.equals(el)) {
            this.head = this.head.next;
            return;
        }
        if (this.head.next != null)
            this.head.next.remove(el, this.head);
    }
    public T min() throws EmptyException{
        if (this.head == null)
            throw new EmptyException("empty list");
        return this.head.getData();
    }
    public T max() throws EmptyException{
        if (this.head == null)
            throw new EmptyException("empty list");
        return this.head.max();
    }
    public T at(int pos) throws ArrayIndexOutOfBoundsException, EmptyException{
        if (this.head == null)
            throw new EmptyException("empty list");
        if (pos < 0)
            throw new ArrayIndexOutOfBoundsException("trying to read out of array bounds");
        return this.head.at(pos);
    }
    public boolean search(T el){
        if (this.head == null)
            return false;
        return this.head.search(el);
    }
    public int index(T el){
        if (this.head == null)
            return -1;
        return this.head.index(el);
    }
    public int size() {
        if (this.head == null)
            return 0;
        return this.head.size();
    } 
    
    @Override 
    public String toString () { 
        return "[ " + this.head.toString();
    }

    public Iterator<T> iterator() {
        return new OrderedListIterator<T>(this);
    }
    //=========================================

    private class OrderedListIterator<U extends Comparable<U>> 
    implements Iterator<U>{
        private OrderedList<U>.Node<U> current;

        public OrderedListIterator(OrderedList<U> list) {
            this.current = list.getHead();
        }

        public boolean hasNext() {
            if (this.current == null)
                return false;
            return true;
        }
        public U next() {
            U data = current.getData();
            current = current.getNext();
            return data;
        }
        public void remove() {
            this.current = this.current.getNext();
        }
    }
}