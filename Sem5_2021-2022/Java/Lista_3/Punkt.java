package figury;

import java.lang.Math.*;


public class Punkt implements Figura {
    private double x;
    private double y;
    
    public Punkt(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public double getX() {
        return this.x;
    }
    public double getY() {
        return this.y;
    }
    public void setX(double x) {
        this.x = x;
    }
    public void setY(double y) {
        this.y = y;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        
        if (!(o instanceof Punkt))
            return false;

        Punkt p = (Punkt) o;
        if (p.getX() == this.getX() && p.getY() == this.getY())
            return true;
        return false;
    }

    public void przesun(Wektor v) {
        this.x += v.dx;
        this.y += v.dy;
    }
    public void obroc(Punkt p, double kat) {
        if (p.equals(this))
            return;
        
        double x_new = (x - p.getX())*Math.cos(kat) - (y - p.getY())*Math.sin(kat) + p.getX();
        double y_new = (x - p.getX())*Math.sin(kat) + (y - p.getY())*Math.sin(kat) + p.getY();
        this.x = x_new;
        this.y = y_new;
    }
    public void odbij(Prosta p) {
        double a = -p.b;
        double b = p.a;
        double c = -(a*this.x + b*this.y);
        
        Punkt pkt = Prosta.punkt_przeciecia(p, new Prosta(a, b, c));
        Wektor v = new Wektor(this, pkt, 2);
        
        this.przesun(v);
    }

    public String toString() {
        String s = "Punkt: (" + this.x + ", " + this.y + ")"; 
        return s;
    }
}