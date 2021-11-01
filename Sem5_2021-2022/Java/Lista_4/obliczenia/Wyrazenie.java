package obliczenia;

public abstract class Wyrazenie implements Obliczalny {
    public static int suma (Wyrazenie... wyr) { 
        int suma = 0;
        for (Wyrazenie w : wyr) 
            suma += w.oblicz();
        return suma;
    }
    public static int iloczyn (Wyrazenie... wyr) { 
        int iloczyn = 0;
        for (Wyrazenie w : wyr) 
            iloczyn *= w.oblicz();
        return iloczyn; 
    }

    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Wyrazenie))
            return false;
    
        Wyrazenie w = (Wyrazenie) o;
        return (w.oblicz() == this.oblicz());
    }
}