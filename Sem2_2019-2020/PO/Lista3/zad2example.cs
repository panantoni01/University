using System;

/*class Comp<K>{
    K elem1;
    K elem2;
    public void set(K e1,K e2)
    {
        this.elem1=e1;
        this.elem2=e2;
    }
    public bool compare ()
    {
        if (this.elem1.Equals(this.elem2)) return true;
        return false;
    }
}*/

class Program{
    public static void Main(string[] args){
        Slownik<int,int> dict = new Slownik<int,int>();
        dict.Add(1,10);
        dict.Add(2,20);
        dict.Add(3,30);
        dict.Add(4,40);
        dict.Wypisz();
        Console.WriteLine("");
        dict.Delete(3);
        dict.Wypisz();
        Console.WriteLine("");
        dict.Delete(6);
        dict.Wypisz();
        Console.WriteLine("");
        dict.Add(7,70);
        dict.Add(8,80);
        dict.Wypisz();
        Console.WriteLine("");
        Console.WriteLine(dict.Search(8));
        Console.WriteLine("");
        dict.Delete(7);
        dict.Wypisz();
        Console.WriteLine("");
        dict.Delete(8);
        dict.Wypisz();
    }
}