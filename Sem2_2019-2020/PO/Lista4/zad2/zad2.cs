using System;
using System.Collections;

// mcs -out:zad2.exe zad2
// W programie wypisujemy liczby pierwsze do 200 (dla przykładu)

public class PNumber : IEnumerator{
    int value = 1;
    public PNumber(int n){this.value = n;}
    private bool isPrime(int n){
        if (n==1 || (n!=2 && n%2==0)) return false;
        if (n==2) return true;
        for (int i=3;i*i<=n;i+=2)
        {
            if (n%i==0) return false;
        }
        return true;
    }
    public object Current{
        get{
            return this.value;
        }
    }
    public bool MoveNext(){
        this.value++;
        while (!isPrime(this.value)) value++;
        if (this.value>0 && this.value<200) return true; //tu wystarczy zmienic warunek na if (this.value>0) aby wypisywało się aż do przekroczenia zakresu
        return false;
    }
    public void Reset(){
        this.value = 1;
    }
}


class PrimeCollection : IEnumerable{
    int liczba;
    public PrimeCollection(){
        this.liczba = 1;
    }
    public IEnumerator GetEnumerator(){
        return new PNumber(liczba);
    }

}


class Program{
    public static void Main(){
        PrimeCollection pc = new PrimeCollection();
        foreach (var item in pc)
        {
            Console.WriteLine(item);
        }
        
    }
}