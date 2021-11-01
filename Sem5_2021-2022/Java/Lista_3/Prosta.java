package figury;

import figury.Punkt;

public class Prosta {
    public final double a;
    public final double b;
    public final double c;

    public Prosta(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public static Prosta przesun(Prosta p, Wektor v) {
        double aa = p.a;
        double bb = p.b;
        double cc = p.c - (aa*v.dx) - (bb*v.dy);

        return new Prosta(aa, bb, cc);
    }
    public static boolean czy_rownolegle(Prosta p, Prosta q) {
        if (p.a*q.b == q.a*p.b) 
            return true;
        return false;
    }
    public static boolean czy_prostopadle(Prosta p, Prosta q) {
        if (p.a*q.a + p.b*q.b == 0)
            return true;
        return false;
    }
    public static Punkt punkt_przeciecia(Prosta p, Prosta q) throws IllegalArgumentException {
        if (czy_rownolegle(p, q))
            throw new IllegalArgumentException("Proste rownolegle");

        double d = p.a*q.b - q.a*p.b;
        double xx = ((p.b*q.c) - (q.b*p.c))/d;
        double yy = -((p.a*q.c) - (q.a*p.c))/d;
        
        return new Punkt(xx, yy);
    }

    public String toString() {
        String s = "Prosta: A = " + this.a + ", B = " + this.b + ", C = " + this.c ; 
        return s;
    }
}