using System;
using System.Collections.Generic;
public class Slownik<K,V> where K : IComparable<K>{
    Slownik<K,V> next;
    Slownik<K,V> last;
    protected V value;
    protected K key;
    public Slownik(){
        this.value = default(V);
        this.key = default(K);
    }
    public void Add (K klucz, V vartosc ){
        if (this.next != null) this.next.Add(klucz,vartosc);
        else{
            this.next = new Slownik<K,V>();
            this.next.key = klucz;
            this.next.value = vartosc;
            this.next.last = this;
        } 
    }
    public V Search (K klucz){
        if (klucz.CompareTo(this.key)==0) return this.value;
        else{
            if (this.next != null) return this.next.Search(klucz);
            return default(V);
        }
    }
    public void Delete (K klucz){
        if (klucz.CompareTo(this.key)==0){
            if (this.next == null){// gdy usuwamy ostatni element
                Console.WriteLine("ok");
                this.last.next = null;
                return;
            }
            else{
                this.last.next = this.next;
                this.next.last = this.last;
            } 
        } 
        if (this.next != null) this.next.Delete(klucz);
    }
    public void Wypisz(){
        Console.WriteLine("Klucz: {0}   Wartość: {1}",this.key,this.value);
        if (this.next!=null) this.next.Wypisz();
    }
}
/*class Program{
    public static void Main(string[] args){
        Slownik<int,int> dict = new Slownik<int,int>();
        for (int i=1;i<=20;i++) dict.Add(i,100*i);
        for (int i=1;i<=20;i++) Console.WriteLine("Klucz: {0}  Wartość: {1}",i,dict.Search(i));
        dict.Delete(15);
        //Console.WriteLine(dict.Search(15));
        for (int i=1;i<=19;i++) Console.WriteLine("Klucz: {0}  Wartość: {1}",i,dict.Search(i));
    }
}*/