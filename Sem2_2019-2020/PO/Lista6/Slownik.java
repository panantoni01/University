import java.io.*;

// javac Slownik.java

class Dictionary<K,V> implements Serializable{
    private static final long serialVersionUID = 1;
    Dictionary<K,V> Next;
    Dictionary<K,V> Last;
    K Key;
    V Value;
    public Dictionary(){
        this.Next = null;
        this.Last = null;
    }
    public void Add(K klucz,V wartosc){
        if (this.Next==null){
            this.Next = new Dictionary<K,V>();
            this.Next.Last = this;
            this.Key = klucz;
            this.Value = wartosc;
        }
        else{
            this.Next.Add(klucz,wartosc);
        }
    }
    public V Search(K klucz){
        if (this.Key == klucz) return this.Value;
        else{
            if (this.Next==null) return null;
            return this.Next.Search(klucz);
        }
    }
    public void Delete(K klucz){
        if (this.Key == klucz){
            if (this.Last == null)
            {
                K tempK = this.Key;
                V tempV = this.Value;
                this.Key = this.Next.Key;
                this.Value = this.Next.Value;
                this.Next.Key = tempK;
                this.Next.Value = tempV;
                this.Next.Delete(klucz);
            }
            else{
                this.Next.Last = this.Last;
                this.Last.Next = this.Next;
            }
        }
        else{
            if (this.Next.Next == null) return;
            else this.Next.Delete(klucz);
        }
    }
    public void PrintAll(){
        System.out.println("Klucz: "+this.Key+", Wartość: "+this.Value);
        if (this.Next.Next == null) return;
        this.Next.PrintAll();
    }
}

public class Slownik{
    public static void main(String[] args) throws Exception{
        Dictionary<Integer,String> slownik = new Dictionary<Integer,String>();
        slownik.Add(1,"B.Kurek");
        slownik.Add(2,"M.Anderson");
        slownik.Add(3,"O.Juantorena");
        slownik.Add(5,"M.Wlazły");
        slownik.Delete(1);
        
        try{
            FileOutputStream fileOutputStream = new FileOutputStream("temporary");
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
            objectOutputStream.writeObject(slownik);
            objectOutputStream.close(); // zapisalismy slownik na dysk

            FileInputStream fileInputStream = new FileInputStream("temporary");
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
            //@SuppressWarnings("unchecked")
            //Dictionary<Integer,String> newslownik =  (Dictionary<Integer,String>) objectInputStream.readObject();
            Dictionary<?,?> newslownik = (Dictionary<?,?>) objectInputStream.readObject();
            objectInputStream.close();
            newslownik.PrintAll(); //newslownik to odzyskana z dysku kolekcja 
        } catch(Exception e){
            System.out.println("Nastąpił błąd");
        }
    }
}