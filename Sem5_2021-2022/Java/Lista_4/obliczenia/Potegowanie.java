package obliczenia;

import java.lang.Math;

public class Potegowanie extends Operator2Arg {
    public Potegowanie (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () throws ArithmeticException{
        if (arg1.oblicz() == 0 && arg2.oblicz() == 0)
            throw new ArithmeticException("potegowanie 0^0");
        return (int)Math.pow(arg1.oblicz(), arg2.oblicz());
    }
    public String toString () {
        return "("+arg1.toString()+" ^("+arg2.toString()+"))";
    }
}
