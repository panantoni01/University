package figury;

public class Odcinek implements Figura {
    private Punkt p1;
    private Punkt p2;

    public Odcinek(Punkt p1, Punkt p2) throws IllegalArgumentException {
        if (p1.equals(p2))
            throw new IllegalArgumentException("Odcinek dlugosci 0");
        
        this.p1 = p1;
        this.p2 = p2;
    }

    public void przesun(Wektor v) {
        this.p1.przesun(v);
        this.p2.przesun(v);
    }
    public void obroc(Punkt p, double kat) {
        this.p1.obroc(p, kat);
        this.p2.obroc(p, kat);
    }
    public void odbij(Prosta p) {
        this.p1.odbij(p);
        this.p2.odbij(p);
    }

    public String toString() {
        String s = "Odcinek: [" + this.p1.toString() + ", " + this.p2.toString() + "]"; 
        return s;
    }
}