package obliczenia;

public class Silnia extends Operator1Arg {
    public Silnia(Wyrazenie w) {
        super(w);
    }
    public int oblicz() throws ArithmeticException{
        int n = arg1.oblicz();
        if (n < 0) 
            throw new ArithmeticException("silnia liczby ujemnej");
        
        int result = 1;
        for (int i = 1; i <= n; i++)
            result *= i;
        return result;
    }
    public String toString() {
        return "(" + this.arg1.toString() + ")!";
    }
}