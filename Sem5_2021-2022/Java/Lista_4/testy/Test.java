package testy;

import obliczenia.*;
import struktury.*;

public class Test {
    public static void test_zbior() {
        ZbiorListowy zbior = new ZbiorListowy();
        zbior.wstaw(new Para("pierwszy", 1));
        zbior.wstaw(new Para("drugi", 2));
        zbior.wstaw(new Para("trzeci", 3));
        zbior.wstaw(new Para("czwarty", 4));
        zbior.wstaw(new Para("piaty", 5));
        ZbiorListowy kopia = zbior.clone();
        System.out.println(zbior);
        System.out.println(zbior.ile());
        
        zbior.usun("dziesiaty");
        System.out.println(zbior);

        zbior.usun("piaty");
        zbior.usun("trzeci");
        System.out.println(zbior);
        System.out.println(zbior.ile());

        System.out.println(zbior.szukaj("piaty"));
        System.out.println(zbior.szukaj("drugi"));

        System.out.println(kopia);
        kopia.czysc();
        System.out.println(kopia);
    }
    
    public static void test_wyrazenia()  {
        Wyrazenie x = new Zmienna("x", 2);
        Wyrazenie y = new Zmienna("y", 7);

        Wyrazenie w1 = new Dodawanie(new Liczba(3), new Liczba(5));
        System.out.println(w1 + " = " + w1.oblicz());

        Wyrazenie w2 = new Mnozenie(new ZmianaZnaku(new Odejmowanie(new Liczba(2), x)), y);
        System.out.println(w2 + " = " + w2.oblicz());

        Wyrazenie w3 = new Dzielenie(
            new Odejmowanie(
                new Mnozenie(
                    new Liczba(3), 
                    new Liczba(11)),
                new Liczba(1)
            ),
            new Dodawanie(
                y,
                new Liczba(5)
            )
        );
        System.out.println(w3 + " = " + w3.oblicz());

        Wyrazenie w4 = new Minimum(
            new Mnozenie(
                new Dodawanie(x, new Liczba(13)), 
                x), 
            new Modulo(
                new Odejmowanie(new Liczba(1), x), 
                new Liczba(2))
        );
        System.out.println(w4 + " = " + w4.oblicz());

        try {
            Wyrazenie w5 = new Mniejsze(
                new Dodawanie(
                    new Potegowanie(new Liczba(2), new Liczba(5)), 
                    new Mnozenie(
                        x, 
                        new LogDyskretny(new Liczba(2), y))), 
                new Liczba(20)
            );
            System.out.println(w5 + " = " + w5.oblicz());
        }
        catch (ArithmeticException e) {
            System.err.println(e.getMessage());
        }

        Wyrazenie w6 = new Potegowanie(new Liczba(2), new Liczba(5));
        System.out.println(w6 + " = " + w6.oblicz());

        Wyrazenie w7 = new Mnozenie(x, new LogDyskretny(new Liczba(2), y));
        System.out.println(w7 + " = " + w7.oblicz());

        System.out.println("w1+w2+w3+w4 = " + Wyrazenie.suma(w1, w2, w3, w4));
        System.out.println("w2 == w4: " + w2.equals(w4));
        System.out.println("w2 == w4 + 1: " + w2.equals(new Dodawanie(w4, new Liczba(1))));

    }

}