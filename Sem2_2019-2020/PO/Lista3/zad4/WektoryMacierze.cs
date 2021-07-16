using System;

public class Wektor{
    public int size;
    public float[] wspolrz;
    
    public Wektor(params float[]wsp) { 
        this.size = wsp.Length; 
        this.wspolrz = new float[this.size];
        for (int i=0;i<this.size;i++)
        {
            this.wspolrz[i]=wsp[i];
        }
    }
    public Wektor(int n){
        this.size = n;
        this.wspolrz = new float[this.size];
    }
    public static Wektor operator + (Wektor w1,Wektor w2){
        if (w1.size != w2.size) return null;
        float[] wsp = new float[w1.size];
        for (int i=0;i<w1.size;i++)
        {
            wsp[i]=w1.wspolrz[i]+w2.wspolrz[i];
        }
        Wektor w = new Wektor(wsp);
        return w;
    }
    public static Wektor operator * (float sk,Wektor w){
        float[] wsp = new float[w.size];
        for (int i=0;i<w.size;i++)
        {
            wsp[i]=w.wspolrz[i]*sk;
        }
        Wektor nowy = new Wektor(wsp);
        return nowy;
    }
    public static Wektor operator * (Wektor w1,Wektor w2){
        if (w1.size != w2.size) return null;
        float[] wsp = new float[w1.size];
        for (int i=0;i<w1.size;i++)
        {
            wsp[i]=w1.wspolrz[i]*w2.wspolrz[i];
        }
        Wektor w = new Wektor(wsp);
        return w;
    }
    /*public float wspolczynnik(float a)//pomocnicza funkcja przy mnożeniu dwóch macierzy
    {
        float result=0;
        for (int i=0;i<this.size;i++)
        {
            result+=(a*this.wspolrz[i]);
        }
        return result;
    }*/
}

public class Macierz {
    public int size;
    public Wektor[] wektory;
    public Macierz(params Wektor[] vects){
        this.size = vects.Length;
        this.wektory = new Wektor[this.size];
        for (int i=0;i<this.size;i++)
        {
            this.wektory[i]=vects[i];
        }
    }
    public static Macierz operator + (Macierz m1,Macierz m2){
        if (m1.size != m2.size) return null;
        Wektor[] vects = new Wektor[m1.size];
        for (int i=0;i<m1.size;i++) vects[i]=new Wektor(m1.wektory[i].size);
        for (int i=0;i<m1.size;i++)
        {
            for (int j=0;j<m1.wektory[i].size;j++)
            {
                vects[i].wspolrz[j] = m1.wektory[i].wspolrz[j] + m2.wektory[i].wspolrz[j];
            }
        }
        Macierz m = new Macierz(vects);
        return m;
    }
    public static Macierz operator * (Macierz m1,Macierz m2){
        if (m1.wektory[0].size!=m2.size) return null;
        Wektor[] vects = new Wektor[m1.size];//przy tworzeniu końcowej macierzy
        for (int i=0;i<m1.size;i++) vects[i]=new Wektor(m2.wektory[0].size);
        for (int i=0;i<m1.size;i++)
        {
            Wektor tmp = new Wektor(m2.wektory[0].size);
            for (int j=0;j<m1.wektory[0].size;j++)
            {
                tmp = tmp + (m1.wektory[i].wspolrz[j] * m2.wektory[j]);
                //Console.WriteLine("{0} * ({1},{2})",m1.wektory[i].wspolrz[j],m2.wektory[j].wspolrz[0],m2.wektory[j].wspolrz[1]);
            }
            vects[i] = tmp;
        }
        Macierz m = new Macierz(vects);
        return m;
    }
    public static Wektor operator * (Macierz m, Wektor w){
        if (m.wektory[0].size!=w.size) return null;
        Wektor result = new Wektor(m.size);
        for (int i=0;i<m.size;i++)
        {
            for (int j=0;j<w.size;j++)
            {
                result.wspolrz[i] += m.wektory[i].wspolrz[j]*w.wspolrz[j];
            }
        }
        return result;
    }
}
