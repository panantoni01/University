package obliczenia;

public class ZmianaZnaku extends Operator1Arg {
    public ZmianaZnaku(Wyrazenie w) {
        super(w);
    }
    public int oblicz() {
        return (-1) * (this.arg1.oblicz());
    }
    public String toString() {
        return "-(" + this.arg1.toString() + ")";
    }
}