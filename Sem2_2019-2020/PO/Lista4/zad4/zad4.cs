using System;
using System.Collections;

// mcs -out:zad4.exe zad4.cs

//Przyjmujemy nastęþującą konwencję:
// - Nieterminale - Duże litery
// - Terminale - Małe litery oraz cyfry

class MyList{ //będziemy chcieli przedstawiać zbiory terminali i nieterminali jako listy znaków
    protected char elem;
    protected MyList next;
    protected static int size;
    //================================
    public MyList(){
        elem = default(char);
        next = null;
    }
    public MyList (char val){
        this.elem = val;
    }
    //================================
    public int Size{
        get{
            return size;
        }
    }
    public char this[int idx]{ // w tej implementacji listy, jeśli lista ma długość n, to jej elementy są na pozycjach 1...n
        get{                   // pozycja 0 to "głowa" listy, której nie używamy do przechowywania wartości
            if (idx>size || idx<0) return default(char);
            if (idx == 0) return this.elem;
            else return this.next[idx-1];
        }
    }
    //================================
    virtual public char Add(char val){
        if (this.elem == val) return val; // nie chcemy wstawiać 2 razy tego samego elementu
        if (this.next == null){
            this.next = new MyList();
            this.next.elem = val;
            size++;
            return val;
        }
        else{
            return this.next.Add(val);
        }
    }
    public char Remove(char val){
        if (this.next == null) return default(char);
        if (this.next.elem == val){
            this.next = this.next.next;
            size--;
            return val;
        }
        else{
            return this.next.Remove(val);
        }
    }
    public void show_content(){
        if (next!=null){
            Console.WriteLine(next.elem);
            next.show_content();
        }
    }
    public bool Search(char val){
        if (this.next == null) return false;
        if (this.next.elem == val) return true;
        return this.next.Search(val);
    }
}

public struct Term_Prod{
    public char noterm;
    public string product;
}

class Productions{ //lista produkcji, czyli noterm ->string prod
    char noterm;
    string prod;
    Productions next;
    static int size;
    public char Noterm{
        get{
            return this.noterm;
        }
    }
    public string Prod{
        get{
            return this.prod;
        }
    }
    public Productions Next{
        get{
            return this.next;
        }
    }
    public int Size{
        get{
            return size;
        }
    }
    public Term_Prod this[int idx]{  
        get{                   
            if (idx>size || idx<0) return default(Term_Prod);
            if (idx == 0){
                Term_Prod ret;
                ret.noterm=this.noterm; ret.product=this.prod;
                return ret;
            }
            else return this.next[idx-1];
        }
    }
    //==================================
    public void Add(char nt,string pr){
        if (this.next == null){
            this.next = new Productions();
            this.next.noterm = nt;
            this.next.prod = pr;
            size++;
        }
        else this.next.Add(nt,pr);
    }
    public void Remove(char nt,string pr){
        if (this.next == null) return;
        if (this.next.noterm == nt && this.next.prod == pr){
            this.next = this.next.next;
            size--;
        }
        else this.next.Remove(nt,pr);
    }
    public void show_content(){
        if (this.next != null){
            Console.WriteLine("{0} --> {1}",this.next.noterm,this.next.prod);
            this.next.show_content();
        }
    }
    private int count_matching(char nt){
        int i = 0;
        if (this.next == null) return i;
        if (this.next.noterm == nt) i++;
        return i+this.next.count_matching(nt);
    }
    public string[] Find_matching(char nt){
        int s = count_matching(nt);
        string[] prods = new string[s]; int k=0;
        for (int i=1;i<=size;i++){
            if (this[i].noterm == nt){
                prods[k]=this[i].product;
                k++;
            }
        }
        return prods;
    }
}

class Grammar{
    public MyList NoTerminals;
    public MyList Terminals;
    public Productions Products;
    Random rnd = new Random();
    
    private bool check_terminals_with_products(){
        for (int i=1;i<=Products.Size;i++){
            for (int j=0;j<Products[i].product.Length;j++){
                if (Terminals.Search(Products[i].product[j])==false && NoTerminals.Search(Products[i].product[j])==false){
                    return false;
                }
            }
        }
        return true;
    }
    public string Construct_randomly(char nt){
        string[] matching = Products.Find_matching(nt);
        int losowa = rnd.Next();
        if (matching.Length == 0) return "";
        losowa = losowa%(matching.Length);
        return matching[losowa];
    }
    private bool terminals_only(string word){
        for (int i=0;i<word.Length;i++){
            if (NoTerminals.Search(word[i])==true) return false;
        }
        return true;
    }
    private string Random_Word_helper(string word){
        while (!(terminals_only(word))){
            for (int i=0;i<word.Length;i++){
                if (NoTerminals.Search(word[i])==true){
                    string gen = Construct_randomly(word[i]);
                    string part1=""; string part2="";
                    for (int j=0;j<i;j++) part1+=word[j];
                    for (int j=i+1;j<word.Length;j++) part2+=word[j];
                    word = part1 + gen + part2;
                }
            }
        }
        return word;
    }
    public string Random_Word(){
        if (check_terminals_with_products()==false){
            return "Nie można utworzyć napisu - niezgodność zbioru terminali/nieterminali ze zbiorem produkcji";
        }
        string ret = ""; ret+=NoTerminals[1]; // zaczynamy od symbolu startowego, czyli pierwszego elementu listy
        return Random_Word_helper(ret);
    }
}
//PONIŻSZY PROGRAM DEFINIUJE GRAMATYKĘ OPISUJĄCĄ LICZBY CAŁKOWITE:
class Program{
    public static void Main(){
        Productions prods = new Productions();
        Grammar gram = new Grammar();
        MyList nts = new MyList();
        MyList ts = new MyList();
        nts.Add('S');
        nts.Add('C');
        nts.Add('Z');
        nts.Add('X');
        ts.Add('-');
        for (int i=0;i<10;i++) ts.Add((char)(i+'0'));
        prods.Add('S',"ZCX");
        prods.Add('Z',"");
        prods.Add('Z',"-");
        prods.Add('C',"0");
        prods.Add('C',"1");
        prods.Add('C',"2");
        prods.Add('C',"3");
        prods.Add('C',"4");
        prods.Add('C',"5");
        prods.Add('C',"6");
        prods.Add('C',"7");
        prods.Add('C',"8");
        prods.Add('C',"9");
        prods.Add('X',"");
        prods.Add('X',"CX"); //JAK DODAMY WIĘCEJ RAZY TĄ PRODUKCJĘ, TO BARDZIEJ PRAWDOPODOBNE, ŻE DOSTANIEMY WIĘKSZĄ LICZBĘ CYFR
        //prods.Add('X',"CX");
        //prods.Add('X',"CX");
        gram.NoTerminals = nts;
        gram.Terminals = ts;
        gram.Products = prods;
        Console.WriteLine(gram.Random_Word());
        /*Productions lista = new Productions();
        lista.Add('A',"0A");
        lista.Add('A',"1A");
        lista.Add('B',"");
        lista.Add('A',"00");
        lista.Add('A',"01");
        lista.Add('A',"02");
        lista.Add('B',"BA");
        lista.Add('B',"AB");
        lista.Add('C',"0C");
        lista.show_content();
        Grammar gram = new Grammar();
        MyList nts = new MyList();
        MyList ts = new MyList();
        nts.Add('A');
        nts.Add('B');
        nts.Add('C');
        nts.Add('D');
        ts.Add('0');
        ts.Add('1');
        ts.Add('2');
        gram.NoTerminals=nts;
        gram.Terminals=ts;
        gram.Products=lista;
        Console.WriteLine(gram.Construct_randomly('D'));
        Console.WriteLine(gram.Construct_randomly('B'));
        Console.WriteLine(gram.Construct_randomly('B'));
        Console.WriteLine(gram.Construct_randomly('B'));
        Console.WriteLine(gram.Construct_randomly('A'));
        Console.WriteLine(gram.Construct_randomly('C'));
        Console.WriteLine(gram.Construct_randomly('C'));
        Console.WriteLine(gram.Construct_randomly('C'));*/
    }
}