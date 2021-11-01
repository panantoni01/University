package obliczenia;

public class Minimum extends Operator2Arg {
    public Minimum (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () {
        if (arg1.oblicz() < arg2.oblicz())
            return arg1.oblicz();
        return arg2.oblicz();
    }
    public String toString () {
        return "min("+arg1.toString()+", "+arg2.toString()+")";
    }
}