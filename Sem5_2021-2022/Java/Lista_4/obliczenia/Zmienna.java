package obliczenia;

import struktury.*;

public class Zmienna extends Wyrazenie {
    private final static ZbiorListowy zbior;
    private String klucz;
    static {
        zbior = new ZbiorListowy();
    }

    public Zmienna(String klucz, int wartosc) {
        try {
            zbior.wstaw(new Para(klucz, wartosc));
        }
        catch(IllegalArgumentException e) {
            System.err.println(e.getMessage());
        }
        this.klucz = klucz;
    }
    public int oblicz() {
        return zbior.szukaj(this.klucz).getWartosc();
    }
    public String toString() {
        return zbior.szukaj(this.klucz).klucz;
    }
}