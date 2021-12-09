import obliczenia.*;
import rozgrywka.*;
import wyjatki.PrzekroczenieLiczbyProb;

import java.util.*;
import java.util.logging.*;

public class Main {
    private static Logger logger;

    static {
        System.setProperty("java.util.logging.config.file",
                "./logging.properties");
        //must initialize loggers after setting above property
        logger = Logger.getLogger(Main.class.getName());
    }

    private static void handleException(Exception exc) {
        if (exc.getMessage() != null)
            System.out.println(exc.getMessage());
        logger.log(Level.SEVERE, "nastapil wyjatek, konczenie programu...");
        logger.exiting(Main.class.getName(), "main");
        System.exit(-1);
    }

    public static void main(String[] args) {
        /*
        //TESTY WYMIERNEJ:
        Wymierna w1 = new Wymierna(75, -60); // -5/4
        Wymierna w2 = new Wymierna(Integer.MIN_VALUE, Integer.MIN_VALUE / 2); // 2
        System.out.println(Wymierna.add(w1, w2));
        System.out.println(Wymierna.sub(w1, w2));
        System.out.println(Wymierna.mul(w1, w2));

        try {
            Wymierna w3 = Wymierna.div(new Wymierna(8,10), new Wymierna(0, 5));
            System.out.println(w3);
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        System.out.println(w1.compareTo(w2));
        System.out.println(w2.compareTo(w1));
        System.out.println(w1.compareTo(new Wymierna(-10, 8)));
        //===========================================
        */
        logger.entering(Main.class.getName(), "main");
        
        Scanner sc = new Scanner(System.in);
        System.out.print("Podaj imie: ");
        String imie = sc.nextLine();
        logger.log(Level.INFO, "podano imie - " + imie);
        System.out.println("Witaj, " + imie + "!");

        Gra gra = new Gra();
        System.out.print("Podaj zakres (n > 3): ");
        try {
            int zakres = sc.nextInt();
            logger.log(Level.INFO, "podano zakres: " + zakres);
            gra.start(zakres);
        }
        catch (Exception exc) {
            sc.close();
            handleException(exc);
        }
        logger.log(Level.INFO, "wylosowano: " + gra);

        while (true) {
            try {
                int licz;
                int mian;
                System.out.print("Podaj licznik: "); licz = sc.nextInt();
                System.out.print("Podaj mianownik: "); mian = sc.nextInt();
                Wymierna w = new Wymierna(licz, mian);
                logger.log(Level.INFO, "gracz probuje: " + w);
                int res = gra.proba(w);

                if (res == Gra.ZA_MALO)
                    System.out.println("To za malo!");
                else if (res == Gra.ZA_DUZO)
                    System.out.println("To za duzo!");
                else { // res == ROWNE
                    System.out.println("Zgadza sie!!!");
                    logger.log(Level.INFO, "wygrana gracza");
                    break;
                }
            }
            catch (PrzekroczenieLiczbyProb exc) {
                sc.close();
                System.out.println(exc.getMessage());
                logger.log(Level.INFO, "przegrana gracza");
            }
            catch (Exception exc) {
                sc.close();
                handleException(exc);
            }

        }
        logger.exiting(Main.class.getName(), "main");
        sc.close();
    }
}