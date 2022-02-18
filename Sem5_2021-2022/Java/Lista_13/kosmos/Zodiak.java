package kosmos;

/**
 * Simple enum type to store Zodiac signs
 * 
 * @author Antoni Pokusiński
 * @version 1.0 date: 27-01-2022
 */
public enum Zodiak {
    BARAN(ZodiakEnergia.AKTYWNA, ZodiakKrzyz.KARDYNALNY, ZodiakZywiol.OGIEN),
    BYK(ZodiakEnergia.PASYWNA, ZodiakKrzyz.STALY, ZodiakZywiol.ZIEMIA),
    BLIZNIETA(ZodiakEnergia.AKTYWNA, ZodiakKrzyz.ZMIENNY, ZodiakZywiol.POWIETRZE),
    RAK(ZodiakEnergia.PASYWNA, ZodiakKrzyz.KARDYNALNY,ZodiakZywiol.WODA),
    LEW(ZodiakEnergia.AKTYWNA, ZodiakKrzyz.STALY, ZodiakZywiol.OGIEN),
    PANNA(ZodiakEnergia.PASYWNA, ZodiakKrzyz.ZMIENNY, ZodiakZywiol.ZIEMIA),
    WAGA(ZodiakEnergia.AKTYWNA, ZodiakKrzyz.KARDYNALNY, ZodiakZywiol.POWIETRZE),
    SKORPION(ZodiakEnergia.PASYWNA, ZodiakKrzyz.STALY, ZodiakZywiol.WODA),
    STRZELEC(ZodiakEnergia.AKTYWNA, ZodiakKrzyz.ZMIENNY, ZodiakZywiol.OGIEN),
    KOZIOROZEC(ZodiakEnergia.PASYWNA, ZodiakKrzyz.KARDYNALNY, ZodiakZywiol.ZIEMIA),
    WODNIK(ZodiakEnergia.AKTYWNA, ZodiakKrzyz.STALY, ZodiakZywiol.POWIETRZE),
    RYBY(ZodiakEnergia.PASYWNA, ZodiakKrzyz.ZMIENNY, ZodiakZywiol.WODA);

    /**
     * Provides distinction between Zodiac signs.
     * 
     * Active signs are considered extravert, full of energy.
     * Passive, on the contrary, are more likely to be introvert, quit.
     */
    public enum ZodiakEnergia {
        AKTYWNA,
        PASYWNA
    }
    
    /**
     * Provides distinction between Zodiac signs.
     * 
     * Cardinal cross -  signs targeted at the outside world, often give the first impulse.
     * Fixed cross - aware of personal needs, targeted at the inner world.
     * Mutable cross - easily adapt to different circumstances.
     */
    public enum ZodiakKrzyz {
        KARDYNALNY,
        STALY,
        ZMIENNY
    }
    
    /**
     * Provides distinction between Zodiac signs.
     * 
     * Fire - symbolizes dynamism, initiative.
     * Earth - symbolizes realism, practicality
     * Wind - symbolizes science, rationalism, social activity.
     * Water - symbolizes subjectivity, sensibility.
     */
    public enum ZodiakZywiol {
        OGIEN,
        ZIEMIA,
        POWIETRZE,
        WODA
    }

    ZodiakEnergia energia;
    ZodiakKrzyz krzyz;
    ZodiakZywiol zywiol;

    /**
     * Constructs and initializes Zodiac sign.
     * @param energia zodiac energy
     * @param krzyz zodiac cross
     * @param zywiol zodiac element
     */
    private Zodiak(ZodiakEnergia energia, ZodiakKrzyz krzyz, ZodiakZywiol zywiol) {
        this.energia = energia;
        this.krzyz = krzyz;
        this.zywiol = zywiol;
    }

    /**
     * Simple getter function
     * @return zodiac energy
     */
    public ZodiakEnergia getEnergia() {
        return this.energia;
    }

    /**
     * Simple getter function
     * @return zodiac cross
     */
    public ZodiakKrzyz getKrzyz() {
        return this.krzyz;
    }

    /**
     * Simple getter function
     * @return zodiac element
     */
    public ZodiakZywiol getZywiol() {
        return this.zywiol;
    }
}