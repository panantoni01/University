package figury;

public class Wektor {
    public final double dx;
    public final double dy;

    public Wektor(double dx, double dy) {
        this.dx = dx;
        this.dy = dy;
    }

    public Wektor(Punkt p, Punkt q, double coeff) {
        this.dx = coeff*(p.getX() - q.getX());
        this.dy = coeff*(p.getY() - q.getY());
    }

    public static Wektor zloz(Wektor v1, Wektor v2) {
        double x = v1.dx + v2.dx;
        double y = v1.dy + v2.dy;
        return new Wektor(x, y);
    }

    public String toString() {
        String s = "Wektor: [" + this.dx + ", " + this.dy + "]"; 
        return s;
    }
}