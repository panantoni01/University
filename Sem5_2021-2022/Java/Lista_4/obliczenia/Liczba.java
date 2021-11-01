package obliczenia;

public class Liczba extends Wyrazenie {
    protected final int liczba;

    public Liczba (int l) {
        liczba = l;
    }

    public int oblicz () {
        return liczba;
    }
    public String toString () {
        return String.valueOf(liczba);
    }
}
