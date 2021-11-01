import figury.Punkt;
import figury.Odcinek;
import figury.Prosta;
import figury.Wektor;
import figury.Trojkat;
import java.lang.Math.*;

public class Main {
    public static void main(String[] args) {
        Punkt o = new Punkt(0,0);
        Punkt p1 = new Punkt(2,0);
        Punkt p2 = new Punkt(5,0);
        Trojkat t;
        /* try {
           t = new Trojkat(o, p1, p2);
        } catch (IllegalArgumentException e) {
            System.out.println("ERROR: " + e.getMessage());
        } */
        
        p2.przesun(new Wektor(-3, 4));
        try {
            t = new Trojkat(o, p1, p2);
            System.out.println(t);
        } catch (IllegalArgumentException e) {
             System.out.println("ERROR: " + e.getMessage());
        }

        p1.obroc(new Punkt(1,0), Math.toRadians(180));
        try {
            Odcinek odc = new Odcinek(p1, o);
            System.out.println(odc);
        } catch (IllegalArgumentException e) {
            System.out.println("ERROR: " + e.getMessage());
        }

        //===========================================================

        Prosta q1 = new Prosta(3,4,5);
        Prosta q2 = Prosta.przesun(q1, Wektor.zloz(new Wektor(2,2), new Wektor(3,3)));
        System.out.println("Czy q1,q2 równoległe: " + Prosta.czy_rownolegle(q1,q2));
        try {
            Punkt pkt = Prosta.punkt_przeciecia(q1, q2);
            System.out.println(pkt);
        } catch (IllegalArgumentException e) {
            System.out.println("ERROR: " + e.getMessage());
        }
    }
}