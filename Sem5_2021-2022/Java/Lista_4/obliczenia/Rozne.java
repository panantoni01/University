package obliczenia;

public class Rozne extends Operator2Arg {
    public Rozne (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () {
        if (arg1.oblicz() != arg2.oblicz())
            return 1;
        return 0;
    }
    public String toString () {
        return "("+arg1.toString()+" != "+arg2.toString()+")";
    }
}
