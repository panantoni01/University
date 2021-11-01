package obliczenia;

public class Dodawanie extends Operator2Arg {
    public Dodawanie (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () {
        return arg1.oblicz() + arg2.oblicz();
    }
    public String toString () {
        return "("+arg1.toString()+" + "+arg2.toString()+")";
    }
}
