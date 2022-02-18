import java.util.EnumSet;

import kosmos.Zodiak;
import kosmos.Zodiak.ZodiakEnergia;

public class Zad2 {
    public static void main(String[] args) {
        EnumSet<Zodiak> kardynalne = EnumSet.allOf(Zodiak.class);
        EnumSet<Zodiak> powietrzne = EnumSet.allOf(Zodiak.class);
        EnumSet<Zodiak> pasywne = EnumSet.allOf(Zodiak.class);
        kardynalne.removeIf(zod -> zod.getKrzyz() != Zodiak.ZodiakKrzyz.KARDYNALNY);
        powietrzne.removeIf(zod -> zod.getZywiol() != Zodiak.ZodiakZywiol.POWIETRZE);
        pasywne.removeIf(zod -> zod.getEnergia() != ZodiakEnergia.PASYWNA);

        System.out.println("Kardynalne:" + kardynalne.toString());
        System.out.println("Powietrzne: " + powietrzne);
        System.out.println("Pasywne: " + pasywne);
        System.out.println("=================================================");

        EnumSet<Zodiak> suma = EnumSet.copyOf(kardynalne);
        suma.addAll(powietrzne);
        suma.addAll(pasywne);
        System.out.println(suma);

        EnumSet<Zodiak> przekroj = EnumSet.copyOf(kardynalne);
        przekroj.retainAll(powietrzne);
        przekroj.retainAll(pasywne);
        System.out.println(przekroj);
    }
}