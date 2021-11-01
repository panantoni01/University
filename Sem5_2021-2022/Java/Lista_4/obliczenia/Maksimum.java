package obliczenia;

public class Maksimum extends Operator2Arg {
    public Maksimum (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () {
        if (arg1.oblicz() > arg2.oblicz())
            return arg1.oblicz();
        return arg2.oblicz();
    }
    public String toString () {
        return "max("+arg1.toString()+", "+arg2.toString()+")";
    }
}