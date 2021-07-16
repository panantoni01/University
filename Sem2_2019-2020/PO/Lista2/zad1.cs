using System;
//using System.Boolean;

class IntStream{
    protected int x;
    protected bool end;
    public IntStream(){
        this.x=0;
        this.end=false;//chyba niepotrzebne
    }
    virtual public int next(){
        if (this.end == true) return x;
        else return x++;
    }
    virtual public bool eos(){
        this.end = true;
        return true;
    }
    virtual public void reset(){
        this.x = 0;
        this.end = false;
    }
}

class PrimeStream:IntStream{
    public PrimeStream(){
        this.x=2;
        this.end=false;
    }
    public bool ifprime(){
        if (this.x==2) return true;
        if (this.x%2==0) return false;
        if (this.x<0) this.x*=(-1);
        int sqr =(int) Math.Sqrt(this.x);
        //Console.WriteLine(sqr);
        for (int i=3;i<=sqr;i+=2)
        {
            if(this.x%i==0) return false;
        } 
        return true;
    }
    override public int next(){
        if (this.x==2 || this.x==3) return this.x++;
        if (this.end == true) return this.x;
        int temp = this.x;
        ++this.x;
        while(this.ifprime()==false) ++x;
        if (this.x<0)
        {
            this.x = temp;
            eos();
        }
        return this.x;
    }
    override public void reset(){
        this.x = 2;
        this.end = false;
    }
}
class RandomStream:IntStream{
    Random rnd = new Random();
    public RandomStream(){
        this.randomize();
    }
    private void randomize(){
        //Random rnd = new Random();
        this.x = rnd.Next(1000); 
        return;
    }
    override public int next(){
        this.randomize();
        return this.x;
    }
    override public bool eos(){
        this.end=false;
        return false;
    }
    override public void reset(){
        this.randomize();
    }
}
class RandomWordStream{
    RandomStream rand = new RandomStream();
    PrimeStream prime = new PrimeStream();
    const string znaki = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    int length;
    string napis;
    private void set_length(){
        this.length = prime.next();
    }
    public string next(){
        this.set_length();
        this.napis="";
        for (int i=0;i<this.length;i++)
        {
            int which = rand.next();
            which = which%62;
            this.napis += znaki[which];
        }
        return this.napis;
    }
}
namespace zadanie1
{
    class Program
    {
        public static void Main(string[] args)
        {
            PrimeStream klasa1 = new PrimeStream();
            /*for (int i=0;i<34;i++)
            {
                Console.WriteLine(klasa.next());
            }
            klasa.eos();
            for (int i=0;i<5;i++)
            {
                Console.WriteLine(klasa.next());
            }
            klasa.reset();
            for (int i=0;i<50;i++)
            {
                Console.WriteLine(klasa.next());
            }
            RandomStream clas = new RandomStream();
            for (int i=0;i<34;i++)
            {
                Console.WriteLine(clas.next());
            }*/
            RandomWordStream klasa = new RandomWordStream();
           for (int i=0;i<20;i++)
           {
                Console.WriteLine(klasa.next());
                Console.WriteLine(klasa1.next());
           }
           RandomStream rand = new RandomStream();
           for (int i=0;i<10;i++)
           {
               Console.WriteLine(rand.next());
           }
        } 
    }
}
