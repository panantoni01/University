package obliczenia;

public class LogDyskretny extends Operator2Arg {
    public LogDyskretny (Wyrazenie a1, Wyrazenie a2) {
        super(a1,a2);
    }

    public int oblicz () throws ArithmeticException {
        // obliczamy log_{arg1}{arg2}
        int baza = arg1.oblicz();
        int liczba = arg2.oblicz();
        if (baza <= 1)
            throw new ArithmeticException("logarytm - nieprawidlowa podstawa");
        if (liczba <= 0)
            throw new ArithmeticException("logarytm - nieprawidlowa liczba logarytmowana");

        int result = 0;
        int tmp = baza;
        while (tmp <= liczba) {
            result++;
            tmp *= baza;
        }
        return result;
    }
    public String toString () {
        return "log("+arg1.toString()+", "+arg2.toString()+")";
    }
}