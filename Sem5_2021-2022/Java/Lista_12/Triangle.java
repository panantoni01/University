public class Triangle {
    private final static double eps = 0.001;
    double a;
    double b;
    double c;
    
    public Triangle(double a, double b, double c) throws IllegalArgumentException{
        if (c >= a+b || b >= a+c || a >= b+c)
            throw new IllegalArgumentException("Invalid triangle sides");

        this.a = a;
        this.b = b;
        this.c = c;
    }

    public double getCircuit() {
        return a + b + c;
    }

    public boolean isRight() {
        if (Math.abs(a*a + b*b - c*c) < eps || 
            Math.abs(a*a + c*c - b*b) < eps || 
            Math.abs(c*c + b*b - a*a) < eps)
            return true;
        return false;
    }

    public boolean isEquilateral() {
        return a == b && b == c;
    }

    public double getArea() {
        double halfC = this.getCircuit() / 2.0;
        double result = Math.sqrt(halfC * (halfC - a) * (halfC - b) * (halfC - c));
        return result;
    }

    public String toString() {
        return "a=" + String.valueOf(a) + ", b=" + String.valueOf(b) + ", c=" + String.valueOf(c);
    }
}