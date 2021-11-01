package obliczenia;

public class Rowne extends Operator2Arg {
    public Rowne (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () {
        if (arg1.oblicz() == arg2.oblicz())
            return 1;
        return 0;
    }
    public String toString () {
        return "("+arg1.toString()+" == "+arg2.toString()+")";
    }
}
