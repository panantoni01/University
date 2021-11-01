package figury;

public class Trojkat implements Figura{
    private Punkt p1;
    private Punkt p2;
    private Punkt p3;

    public Trojkat(Punkt p1, Punkt p2, Punkt p3) throws IllegalArgumentException {
        if (p1.equals(p2) || p2.equals(p3))
            throw new IllegalArgumentException("Punkty nie sa rozne");
        
        double coeff = (p1.getY() - p2.getY()) * (p2.getX() - p3.getX()) - 
                       (p2.getY() - p3.getY()) * (p1.getX() - p2.getX());
        
        if (coeff == 0)
            throw new IllegalArgumentException("Punkty wspolliniowe");

        this.p1 = p1;
        this.p2 = p2;
        this.p3 = p3;
    }

    public void przesun(Wektor v) {
        this.p1.przesun(v);
        this.p2.przesun(v);
        this.p3.przesun(v);
    }
    public void obroc(Punkt p, double kat) {
        this.p1.obroc(p, kat);
        this.p2.obroc(p, kat);
        this.p3.obroc(p, kat);
    }
    public void odbij(Prosta p) {
        this.p1.odbij(p);
        this.p2.odbij(p);
        this.p3.odbij(p);
    }

    public String toString() {
        String s = "Trojkat: [" + this.p1.toString() + ", " + this.p2.toString() + ", " + this.p3.toString() +"]"; 
        return s;
    }
}