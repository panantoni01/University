package obliczenia;

public class Dzielenie extends Operator2Arg {
    public Dzielenie (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () throws ArithmeticException{
        if (arg2.oblicz() == 0)
            throw new ArithmeticException("dzielenie przez 0");
        return arg1.oblicz() / arg2.oblicz();
    }
    public String toString () {
        return "("+arg1.toString()+" / "+arg2.toString()+")";
    }
}
