import java.io.*;
import java.util.*;

// javac Arith.java

class Tablica{
    public static Hashtable<String, Integer> hash_table = new Hashtable<String, Integer>();
}

abstract class Wyrazenie{
    abstract public int oblicz();
    abstract public String toString();
}
//======================================
abstract class Lisc extends Wyrazenie{
    int value;
    public int oblicz(){
        return this.value;
    }
    public String toString(){
        String ret = "";
        int copy = this.value;
        if (copy<0){
            copy *= -1;
        }
        while (copy!=0){
            ret = (char)((copy%10)+(int)'0') + ret;
            copy /= 10;
        }
        if (this.value<0){
            ret = "(" + "-" + ret + ")";
        }
        return ret;
    }
}
class Stala extends Lisc{
    public Stala(int v){
        this.value = v;
    }
}
class Zmienna extends Lisc{
    public Zmienna(String symb){
        this.value = Tablica.hash_table.get(symb);
    }
}
//======================================
abstract class Wezel extends Wyrazenie{
    Wyrazenie val_left;
    Wyrazenie val_right;
    public Wezel(Wyrazenie w1,Wyrazenie w2){
        this.val_left = w1;
        this.val_right = w2;
    }
}
class Dodaj extends Wezel{
    public Dodaj(Wyrazenie w1,Wyrazenie w2){ super(w1,w2);}
    public int oblicz(){
        return this.val_left.oblicz() + this.val_right.oblicz();
    }
    public String toString(){
        String ret = this.val_left.toString() + "+" + this.val_right.toString();
        return ret;
    }
}
class Odejmij extends Wezel{
    public Odejmij(Wyrazenie w1,Wyrazenie w2){ super(w1,w2);}
    public int oblicz(){
        return this.val_left.oblicz() - this.val_right.oblicz();
    }
    public String toString(){
        String ret = this.val_left.toString() + "-" + this.val_right.toString();
        return ret;
    }
}
class Pomnoz extends Wezel{
    public Pomnoz(Wyrazenie w1,Wyrazenie w2){ super(w1,w2);}
    public int oblicz(){
        return this.val_left.oblicz() * this.val_right.oblicz();
    }
    public String toString(){
        String part_left = this.val_left.toString();
        String part_right = this.val_right.toString();
        if ((this.val_left instanceof Dodaj) || (this.val_left instanceof Odejmij)){
            part_left = "(" + part_left + ")";
        }
        if ((this.val_right instanceof Dodaj) || (this.val_right instanceof Odejmij)){
            part_right = "(" + part_right + ")";
        }
        return (part_left + "*" + part_right);
    }
}
class Podziel extends Wezel{
    public Podziel(Wyrazenie w1,Wyrazenie w2){ super(w1,w2);}
    public int oblicz(){
        try{
            return this.val_left.oblicz() / this.val_right.oblicz();
        }
        catch (Exception e){
            System.out.println("Nie dziel przez 0!");
        }
        return Integer.MIN_VALUE;
    }
    public String toString(){
        String part_left = this.val_left.toString();
        String part_right = this.val_right.toString();
        if ((this.val_left instanceof Dodaj) || (this.val_left instanceof Odejmij)){
            part_left = "(" + part_left + ")";
        }
        if ((this.val_right instanceof Dodaj) || (this.val_right instanceof Odejmij)){
            part_right = "(" + part_right + ")";
        }
        return part_left + "/" + part_right;
    }
}


public class Arith{
    public static void main(String[] args){
        Tablica.hash_table.put("x1",10);
        Tablica.hash_table.put("x2",20);
        Tablica.hash_table.put("x3",30);
        /*for (Map.Entry<String, Integer> entry : Tablica.hash_table.entrySet()) {
            String key = entry.getKey();
            Integer value = entry.getValue();
            
            System.out.println ("Key: " + key + " Value: " + value);
        }*/
        Wyrazenie w1 = new Podziel(new Dodaj(new Zmienna("x1"), new Stala(4)), new Odejmij(new Zmienna("x1"),new Stala(3)));
        System.out.println(w1.toString()+"="+w1.oblicz());
        Wyrazenie w2 = new Pomnoz(new Pomnoz(new Stala(2), new Zmienna("x3")),new Odejmij(new Dodaj(new Stala(3), new Stala(-1)),new Zmienna("x2")));
        System.out.println(w2.toString()+" = "+w2.oblicz());
        Wyrazenie wx = new Dodaj(new Stala(3),new Stala(-1));
        System.out.println(wx.toString()+" = "+wx.oblicz());
        Wyrazenie w3 = new Podziel(new Pomnoz(new Stala(100),new Stala(-100)),new Dodaj(new Zmienna("x1"),new Stala(-10)));
        System.out.println(w3.toString()+" = "+w3.oblicz());
    }
}