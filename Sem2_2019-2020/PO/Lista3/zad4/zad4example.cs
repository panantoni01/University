using System;

class Program{
    public static void Main (){
        /*Wektor w1 = new Wektor((float)4.5,(float)2.3,(float)3.14); //TESTY DO KLASY WEKTOR
        Wektor w2 = new Wektor(3,9,27);
        Wektor w = w1 + w2;
        Console.WriteLine(w.size);
        Console.WriteLine(w1.size);
        Console.WriteLine(w2.size);
        Console.WriteLine(w.wspolrz[0]);
        Console.WriteLine(w.wspolrz[1]);
        Console.WriteLine(w.wspolrz[2]);
        Wektor wa = (float)2*w;
        Console.WriteLine(wa.wspolrz[0]);
        Console.WriteLine(wa.wspolrz[1]);
        Console.WriteLine(wa.wspolrz[2]);
        Wektor w1w2 = w1*w2;
        Console.WriteLine(w1w2.wspolrz[0]);
        Console.WriteLine(w1w2.wspolrz[1]);
        Console.WriteLine(w1w2.wspolrz[2]);*/
        
        
        /*Wektor[] first = new Wektor[3]; //TEST DLA DODAWANIA MACIERZ + MACIERZ
        Wektor[] second = new Wektor[3];
        float[] wsp1 = new float[4];
        float[] wsp2 = new float[4];
        for (int i=0;i<=2;i++)
        {
            for (int j=0;j<4;j++)
            {
                wsp1[j]++; wsp1[j]+=i+j;
                wsp2[j]+=2;
            }
            first[i] = new Wektor(wsp1);
            second[i] = new Wektor(wsp2);
        }
        Macierz m1 = new Macierz(first);
        Macierz m2 = new Macierz(second);
        Macierz m = m1 + m2;
        Console.WriteLine(m1.size);
        Console.WriteLine(m2.size);
        Console.WriteLine(m.size);
        for (int i=0;i<m1.size;i++)
        {
            for (int j=0;j<m1.wektory[i].size;j++)
            {
                Console.Write("{0} ",m1.wektory[i].wspolrz[j]);
            }
            Console.Write("\n");
        }
        Console.Write("\n");
        for (int i=0;i<m1.size;i++)
        {
            for (int j=0;j<m2.wektory[i].size;j++)
            {
                Console.Write("{0} ",m2.wektory[i].wspolrz[j]);
            }
            Console.Write("\n");
        }
        Console.Write("\n");
        for (int i=0;i<m.size;i++)
        {
            for (int j=0;j<m.wektory[i].size;j++)
            {
                Console.Write("{0} ",m.wektory[i].wspolrz[j]);
            }
            Console.Write("\n");
        }*/
      
      float[] wsp11={1,0,2}; Wektor a1 = new Wektor(wsp11); //TEST DLA MNOŻENIA MACIERZ X MACIERZ
        float[] wsp12={-1,3,1}; Wektor a2 = new Wektor(wsp12);
       
        float[] wsp21={3,1}; Wektor b1 = new Wektor(wsp21);
        float[]  wsp22={2,1}; Wektor b2 = new Wektor(wsp22);
        float[] wsp23={1,0}; Wektor b3 = new Wektor(wsp23);
        
        Wektor[] vec1={a1,a2};
        Wektor[] vec2={b1,b2,b3};
        Macierz m1 = new Macierz(vec1);
        Macierz m2 = new Macierz(vec2);
        Macierz m = m1*m2;
        Console.WriteLine(m.wektory[0].wspolrz[0]);
        Console.WriteLine(m.wektory[0].wspolrz[1]);
        Console.WriteLine(m.wektory[1].wspolrz[0]);
        Console.WriteLine(m.wektory[1].wspolrz[1]);
        
        /*float[] wsp1={-3,0,3,2}; Wektor a1 = new Wektor(wsp1); //TEST DLA MNOŻENIA MACIERZ X WEKTOR
        float[] wsp2={1,7,-1,9}; Wektor a2 = new Wektor(wsp2);
        float[] wsp={2,-3,4,-1}; Wektor w = new Wektor(wsp);
        Wektor[] tab = {a1,a2};
        Macierz m = new Macierz(tab);
        Wektor mx = m*w;
        Console.WriteLine(mx.wspolrz[0]);
        Console.WriteLine(mx.wspolrz[1]);*/
    }
}