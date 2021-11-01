package figury;

interface Figura {
    public void przesun(Wektor v);
    public void obroc(Punkt p, double kat);
    public void odbij(Prosta p);
}