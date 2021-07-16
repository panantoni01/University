import java.io.*;

// javac Stopnie.java

enum Korpus{
    KSzeregowych,//najniższy korpus
    KPodoficerow_ml,
    KPodoficerow,
    KPodoficerow_st,
    KOficerow_ml,
    KOficerow_st,
    KGeneralow;//najwyższy korpus
}

abstract class Stopien_Wojsk implements Comparable<Stopien_Wojsk>{
    String imie;
    String nazwisko;
    int wiek;
    Korpus korpus;
    double liczba_gwiazdek; //wiecej gwiazdek == wyzszy stopien w danym korpusie
    String nazwa;
    /*Gdybyśmy założyli, że można jedynie dodawać stopnie faktycznie występujące w WP, można tu dać typ int.
    Nie wiemy jednak, czy kiedyś nie zostaną dodane zupełnie nowe, więc lepiej dać typ float.
    Może się wtedy co prawda okazać, że chcąc dodać nowy stopień (z tego samego korpusu) między dwa stopnie
    mające 2 i 3 gwiazdki, musielibyśmy przydzielić mu np. 2,5 gwiazdki, co brzmi troche absurdalnie, jednak w 100%
    pozwala na zachowanie zasady otwarte-zamknięte*/
    Stopien_Wojsk(String i,String n,int w,Korpus korp,double gwiazd){
        this.imie = i;
        this.nazwisko = n;
        this.wiek = w;
        this.korpus = korp;
        this.liczba_gwiazdek = gwiazd;
    }
    public int compareTo(Stopien_Wojsk zolnierz){//0 jeśli równy stopień, -1 jeśli mniejszy, 1 jeśli większy
        if (this.korpus == zolnierz.korpus){
            if (this.liczba_gwiazdek == zolnierz.liczba_gwiazdek) return 0;
            else if (this.liczba_gwiazdek > zolnierz.liczba_gwiazdek) return 1;
            else return -1;
        }
        else if (this.korpus.ordinal() > zolnierz.korpus.ordinal()) return 1;
        else return -1;
    };
}
class General extends Stopien_Wojsk{
    public General(String i,String n,int w){
        super(i,n,w,Korpus.KGeneralow,4);
        nazwa = "Generał"; 
    }
}
class Major extends Stopien_Wojsk{
    public Major(String i,String n,int w){
        super(i,n,w,Korpus.KOficerow_st,1);
        nazwa = "Major";
    }
}
class Pulkownik extends Stopien_Wojsk{
    public Pulkownik(String i,String n,int w){
        super (i,n,w,Korpus.KOficerow_st,4);
        nazwa = "Pułkownik";
    }
}
class Porucznik extends Stopien_Wojsk{
    public Porucznik(String i,String n,int w){
        super (i,n,w,Korpus.KOficerow_ml,3);
        nazwa = "Porucznik";
    }
}
class Kapral extends Stopien_Wojsk{
    public Kapral(String i,String n,int w){
        super (i,n,w,Korpus.KPodoficerow_ml,1);
        nazwa = "Kapral";
    }
}
class Plutonowy extends Stopien_Wojsk{
    public Plutonowy(String i,String n,int w){
        super (i,n,w,Korpus.KPodoficerow_ml,3);
        nazwa = "Plutonowy";
    }
}
class Marszalek extends Stopien_Wojsk{
    public Marszalek(String i,String n,int w){
        super (i,n,w,Korpus.KGeneralow,6);
        nazwa = "Marszałek";
    }
}
//===================================================
class Lista_Zolnierzy{
    Stopien_Wojsk zolnierz;
    Lista_Zolnierzy last;
    Lista_Zolnierzy next;
    void Add(Stopien_Wojsk nowy){
        if (this.last==null && this.next==null){
            this.zolnierz = nowy;
            this.next = new Lista_Zolnierzy();
            this.last = new Lista_Zolnierzy();
            this.next.last = this;
            this.last.next = this;
        }
        else if (this.next==null){
            this.next = new Lista_Zolnierzy();
            this.zolnierz = nowy;
            this.next.last = this;
        }
        else if (this.last == null){
            this.last = new Lista_Zolnierzy();
            this.zolnierz = nowy;
            this.last.next = this;
        }
        else if (nowy.compareTo(this.zolnierz)==1){
            if (this.next.zolnierz != null && nowy.compareTo(this.next.zolnierz)<1){
                this.next.last = new Lista_Zolnierzy();
                this.next.last.zolnierz = nowy;
                this.next.last.next = this.next;
                this.next = this.next.last;
                this.next.last = this;
            }
            else{
                this.next.Add(nowy);
            }
            
        }
        else if (nowy.compareTo(this.zolnierz)<1){
            if (this.last.zolnierz != null && nowy.compareTo(this.last.zolnierz)==1){
                this.last.next = new Lista_Zolnierzy();
                this.last.next.zolnierz = nowy;
                this.last.next.last = this.last;
                this.last= this.last.next;
                this.last.next = this;
            }
            else{
                this.last.Add(nowy);
            }
        }
    }
    private void show(){
        System.out.println("Imię: "+ this.zolnierz.imie);
        System.out.println("Nazwisko: "+ this.zolnierz.nazwisko);
        System.out.println("Stopień: "+ this.zolnierz.nazwa);
        System.out.println("Wiek: "+ this.zolnierz.wiek);
        System.out.println("---------------------------");
    }
    private void show_next(){
        if (this.next==null){
            return;
        }
        this.show();
        if (this.next!=null){
            this.next.show_next();
        }
        return;
    }
    private void go_last(){
       if (this.last==null){
           this.next.show_next();
           return;
       }
       else{
           this.last.go_last();
           return;
       }
    }
    public void Show_all(){
        this.go_last();
        return;
    }
    public Stopien_Wojsk Delete_Last(){
        if (this.last.last==null && this.next.next==null){ // gdy tylko 1 element w liście
            this.next=null;
            this.last=null;
            Stopien_Wojsk ret = this.zolnierz;
            this.zolnierz=null;
            return ret;
        }
        else {
            if (this.last.last==null){
                this.last=null;
                Stopien_Wojsk ret = this.zolnierz;
                this.zolnierz=null;
                return ret;
            }
            else{
                return this.last.Delete_Last();
            }
        }
    }
}

public class Stopnie {
   public static void main(String [] args){
        Kapral k1 = new Kapral("Jan","Kowalski",35);
        Kapral k2 = new Kapral("John","Black",28);
        General g1 = new General("Edward","Rydz-Śmigły",57);
        Major m1 = new Major("Major","Płut",31);
        Pulkownik p1 = new Pulkownik("Krzysztof","Dowgird", 29);
        Pulkownik p2 = new Pulkownik("Oberleutnant","von Nogay", 27);
        Plutonowy pl1 = new Plutonowy("Czech","Chudej",30);
        Marszalek mar1 = new Marszalek("Józef","Piłsudski",62);
        Lista_Zolnierzy spis = new Lista_Zolnierzy();
        spis.Add(k1);
        spis.Add(k2);
        spis.Add(g1);
        spis.Add(m1);
        spis.Add(p1);
        spis.Add(p2);
        spis.Add(pl1);
        spis.Add(mar1);
        spis.Show_all();
        //System.out.println(spis.last.zolnierz == null);
        Stopien_Wojsk dezerter1 = spis.Delete_Last();
        Stopien_Wojsk dezerter2 = spis.Delete_Last();
        System.out.println("USUNIĘTO:"); //usunęliśmy dwóch "najmniejszych" żołnierzy - czyli o najmniejszych stopniach
        System.out.println(dezerter1.nazwisko);
        System.out.println(dezerter2.nazwisko);
        System.out.println("PO USUNIĘCIU: \n");
        spis.Show_all();
   }
}