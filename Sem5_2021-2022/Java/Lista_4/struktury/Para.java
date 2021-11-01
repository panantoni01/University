package struktury;

public class Para implements Cloneable, Comparable<Para> {
    public final String klucz;
    private int wartosc;
    
    public Para(String klucz, int wartosc) throws IllegalArgumentException {
        if (klucz.isEmpty())
            throw new IllegalArgumentException("Pusty klucz");
        for(char ch : klucz.toCharArray())
            if (!(Character.isLowerCase(ch) && Character.isLetter(ch)))
                throw new IllegalArgumentException("Nieprawidlowy format klucza");

        this.klucz = klucz;
        this.wartosc = wartosc;
    }

    public int getWartosc() {
        return this.wartosc;
    }
    public void setWartosc(int wartosc) {
        this.wartosc = wartosc;
    }

    public Para clone() {
        try {
            Para para = (Para) super.clone();
            return para;
        }
        catch (CloneNotSupportedException ex) { return null; }
    }

    public int compareTo(Para para) {
        return this.klucz.compareTo(para.klucz);
    }

    public boolean equals(Object o) {
        if (o == this)
            return true;

        if (!(o instanceof Para))
            return false;

        Para p = (Para) o;
        return this.klucz.equals(p.klucz);
    }

    public String toString() {
        return "[\"" + this.klucz + "\": " + this.wartosc + "]";
    }
}