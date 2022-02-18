package kosmos;

/**
 * Enum type to store some basic information about a planet
 * 
 * @author Antoni Pokusiński
 * @version 1.0 date: 27-01-2022
 */
public enum Planeta {
    ZIEMIA(5.976e+24, 12742L, 150000000L, 365.256, "Niebieski", TypPlanety.SKALISTA),
    MERKURY(3.303e+23, 4879L, 57910000L, 87.969, "Szary", TypPlanety.SKALISTA),
    WENUS(4.869e+24, 12103L, 108200000L, 224.701, "Żółty", TypPlanety.SKALISTA),
    MARS(6.421e+23, 6779L, 227900000L, 686.980,"Czerwony", TypPlanety.SKALISTA),
    JOWISZ(1.9e+27, 139822L, 778500000L, 4332.589, "Pomarańczowy", TypPlanety.GAZOWA),
    SATURN(5.688e+26, 116464L, 1434000000L, 10759.22, "Żółty", TypPlanety.GAZOWA),
    URAN(8.686e+25, 50724L, 2872460000L, 30685.4, "Cyjan", TypPlanety.LODOWO_GAZOWA),
    NEPTUN(1.024e+26, 49244L, 4495000000L, 60189, "Niebieski", TypPlanety.LODOWO_GAZOWA);
    
    public enum TypPlanety {
        SKALISTA,
        GAZOWA,
        LODOWO_GAZOWA;
    }
    
    double masa; //kg
    long srednica; //km
    long odleglosc; //km
    double czas_obiegu; //dni
    String kolor;
    TypPlanety typ;

    /**
     * Constructs and initializes a planet, given some basic characteristics
     * @param masa planet's weight
     * @param srednica planet's diameter
     * @param odleglosc average distance to the Sun
     * @param czas_obiegu orbital period
     * @param kolor planet's color
     * @param typ planet's type (based on its chemical composition)
     */
    private Planeta(double masa, 
                    long srednica, 
                    long odleglosc, 
                    double czas_obiegu, 
                    String kolor,
                    TypPlanety typ) {
        
        this.masa = masa;
        this.srednica = srednica;
        this.odleglosc = odleglosc;
        this.czas_obiegu = czas_obiegu;
        this.kolor = kolor;
        this.typ = typ;
    }

    /**
     * Simple getter function
     * @return planet's average distance to the Sun 
     */
    public double getOdleglosc() {
        return this.odleglosc;
    }
}