using System;
using System.Collections;

public class PrimeNumber{
    int value;

    public PrimeNumber(int n){
        this.value = n;
    }
    private bool isPrime(int n){
        if (n==1 || (n!=2 && n%2==0)) return false;
        for (int i=3;i*i<=n;i+=2)
        {
            if (n%i==0) return false;
        }
        return true;
    }
}

public class PrimeCollection : IEnumerable{

    PrimeNumber liczba = new PrimeNumber(2);

    public IEnumerator GetEnumerator(){
        return liczba.GetEnumerator();
    }
}