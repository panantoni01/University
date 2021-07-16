using System;
using System.Collections.Generic;

class ListaLeniwa{
    protected List<int> lista;
    protected int n;
    public ListaLeniwa(){
        this.lista = new List<int>();
        this.n = 0;
    }
    public int size(){
        return this.n;
    }
    Random rnd = new Random();
    private int randomize(){
       int x = rnd.Next();
       return x;
    }
    virtual public int element(int i){
        if (i<this.n)
        {
            return this.lista[i];
        }
        int last = this.n;
        this.n = i;
        for (int j=0;j<=this.n-last;j++)
        {
            int x = randomize();
            this.lista.Add(x);
        }
        return this.lista[i];
    }
}
class Pierwsze:ListaLeniwa{
    public Pierwsze(){
        this.n=0;
        this.lista=new List<int>();
    }
    private bool ifprime(int x){
        if (x==2) return true;
        if (x%2==0) return false;
        int sqr =(int) Math.Sqrt(x);
        //Console.WriteLine(sqr);
        for (int i=3;i<=sqr;i+=2)
        {
            if(x%i==0) return false;
        } 
        return true;
    }
    override public int element(int i){
        if (i<this.n)
        {
            return this.lista[i-1];
        }
        int last = this.n;
        this.n = i;
        for (int j=0;j<this.n-last;j++)
        {
            int ostatnia;
            if (lista.Count==0) {ostatnia=1;}
            else {ostatnia = this.lista[last+j-1];}
            //Console.WriteLine("ok");
            ostatnia++;
            while (ifprime(ostatnia)==false) ostatnia++;
            this.lista.Add(ostatnia);
            //Console.WriteLine("ok");
        }
        return this.lista[i-1];
    }
}
class Program2
{
    public static void Main()
    {
        Pierwsze klasa = new Pierwsze();
        Console.WriteLine(klasa.element(5));
        Console.WriteLine(klasa.size());
        Console.WriteLine(klasa.element(6));
        Console.WriteLine(klasa.size());
        Console.WriteLine(klasa.element(2));
        Console.WriteLine(klasa.size());
        Console.WriteLine(klasa.element(7));
        Console.WriteLine(klasa.element(2));
        Console.WriteLine(klasa.size());
        Console.WriteLine(klasa.element(7));
        Console.WriteLine(klasa.element(1));

    }
}