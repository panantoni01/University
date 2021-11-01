package obliczenia;

public class Stala extends Wyrazenie {
    protected final int stala;

    public Stala(int stala) {
        this.stala = stala;
    }
    public int oblicz() {
        return this.stala;
    }
    public String toString () {
        return String.valueOf(stala);
    }
} 