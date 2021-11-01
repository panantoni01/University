package obliczenia;

public abstract class Operator1Arg extends Wyrazenie {
    protected final Wyrazenie arg1;

    public Operator1Arg (Wyrazenie a1) throws IllegalArgumentException{
        if (a1 == null) 
            throw new IllegalArgumentException("null argument");
        arg1 = a1;
    }

}