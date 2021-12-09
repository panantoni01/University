package rozgrywka;

import obliczenia.*;
import wyjatki.PrzekroczenieLiczbyProb;
import wyjatki.ZgadywanieOdgadnietej;

import java.lang.Math;

public class Gra {
    public final static int ZA_MALO = -1;
    public final static int ROWNE = 0;
    public final static int ZA_DUZO = 1;
    
    private int zakres; 
    private Wymierna liczba; 
    private int maksIloscProb; 
    private int licznikProb; 
    private boolean odgadnieto; 

    public void start(int z) throws IllegalArgumentException{ 
        if (z < 4) 
            throw new IllegalArgumentException("zbyt maly zakres");
        zakres = z; 

        // Math.random() -> <0, 1)
        int licz = (int) (Math.random() * zakres) + 1; 
        int mian = (int) (Math.random() * zakres) + 1; 
        liczba = new Wymierna(licz, mian); 
        
        // inicjalizacja: maksIlośćPrób, licznikPrób, odgadnięto 
        maksIloscProb = (int) Math.ceil(3.0 * Math.log((double) zakres) / Math.log(2.0));
        licznikProb = 0;
        odgadnieto = false;

        assert licz < mian; // czy 0 < liczb < 1 
    }

    public int proba(Wymierna w) throws PrzekroczenieLiczbyProb, ZgadywanieOdgadnietej{
        if (licznikProb >= maksIloscProb)
            throw new PrzekroczenieLiczbyProb("Osiagnieto maks. liczbe prob. Przegrana!");
        if (odgadnieto == true)
            throw new ZgadywanieOdgadnietej();
        
        licznikProb++;
        int result = this.liczba.compareTo(w);
        if (result == 0) {
            odgadnieto = true;
            return ROWNE;
        }
        if (result == -1)
            return ZA_DUZO;
        else
            return ZA_MALO;
    }

    public String toString() { // debug
        return this.liczba.toString();
    }
}