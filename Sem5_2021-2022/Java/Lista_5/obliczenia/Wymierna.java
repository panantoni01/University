package obliczenia;

import wyjatki.*;
import java.lang.Math;

public class Wymierna implements Comparable<Wymierna>{
    private int licznik = 1;
    private int mianownik = 1;

    private static int NWD(int a, int b) {
        if (b != 0) 
            return NWD(b, a % b);
        return a;
    }
    private static int NWW(int a, int b) {
        return (a / NWD(a, b)) * b;
    }

    public Wymierna(int k, int m) throws Mianownik0 {
        if (m == 0)
            throw new Mianownik0("mianownik równy 0");
        this.licznik = k;
        this.mianownik = m;
        
        int nwd = NWD(Math.abs(this.licznik), Math.abs(this.mianownik));
        this.licznik /= nwd; 
        this.mianownik /= nwd;
        if (this.mianownik < 0) {
            this.licznik *= -1;
            this.mianownik *= -1;
        }
    }
    public Wymierna(int n) {
        this(n, 1);
    }
    public Wymierna() {
        this(0, 1);
    }

    public int getLicznik() {
        return this.licznik;
    }
    public int getMianownik() {
        return this.mianownik;
    }

    public String toString() {
        return this.licznik + "/" + this.mianownik;
    }
    public boolean equals(Object o) {
        if (o == this)
            return true;

        if (!(o instanceof Wymierna))
            return false;

        Wymierna w = (Wymierna) o;
        return (this.licznik == w.licznik && this.mianownik == w.mianownik);
    }
    public int compareTo(Wymierna w) {
        double w1 = (double)this.licznik / (double)this.mianownik;
        double w2 = (double)w.licznik / (double)w.mianownik;
        return w1 > w2 ? 1 : (w1 < w2 ? -1 : 0);  
    }

    public static Wymierna add(Wymierna w1, Wymierna w2) throws PrzekroczenieZakresu {
        int nww = NWW(w1.getMianownik(), w2.getMianownik());
        if (nww < 0)
            throw new PrzekroczenieZakresu("Overflow przy dodawaniu " + w1 + ", " + w2);

        return new Wymierna((nww / w1.getMianownik()) * w1.getLicznik() + (nww / w2.getMianownik()) * w2.getLicznik(), nww);
    }
    public static Wymierna sub(Wymierna w1, Wymierna w2) {
        Wymierna tmp = new Wymierna(- w2.getLicznik(), w2.getMianownik());
        return add(w1, tmp);
    }
    public static Wymierna mul(Wymierna w1, Wymierna w2) throws PrzekroczenieZakresu {
        // skracamy ułamki od razu, aby zminimalizować szanse przekroczenia zakresu
        Wymierna v1 = new Wymierna(w1.getLicznik(), w2.getMianownik());
        Wymierna v2 = new Wymierna(w2.getLicznik(), w1.getMianownik());
        
        // sprawdzamy, czy nie następuje overflow
        int mul_mian = v1.getMianownik() * v2.getMianownik();
        if (mul_mian < 0)
            throw new PrzekroczenieZakresu("Overflow przy mnozeniu " + v1 + ", " + v2);
 
        int mul_licz = v1.getLicznik() * v2.getLicznik();
        double expected_sign = Math.signum(v1.getLicznik()) * Math.signum(v2.getLicznik());
        double sign = Math.signum(mul_licz);
        if (sign != expected_sign)
                throw new PrzekroczenieZakresu("Overflow przy mnozeniu " + v1 + ", " + v2);
        
        return new Wymierna(v1.getLicznik() * v2.getLicznik(), v1.getMianownik() * v2.getMianownik());
    }
    public static Wymierna div(Wymierna w1, Wymierna w2) {
        Wymierna tmp = new Wymierna(w2.getMianownik(), w2.getLicznik());
        return mul(w1, tmp);
    }
}