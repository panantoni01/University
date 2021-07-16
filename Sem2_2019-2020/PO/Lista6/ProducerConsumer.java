import java.io.*;
import java.util.ArrayList;
import java.util.Random;

// java ProducerConsumer

class Buffer<T>{
    public int size; // rozmiar tablicy
    ArrayList<T> array;
    public int elems;// ile elementów w danym momencie
    public Buffer(int n){
        this.size = n;
        this.array = new ArrayList<T>();
        this.elems = 0;
    }
    public void Add(T el){
        if (this.elems == this.size){
            System.out.println("Error: full buffer");
            return;
        }
        this.array.add(el);
        this.elems++;
    }
    public  T Pop(){
        if (this.elems == 0){
            System.out.println("Error: empty buffer");
            return null;
        }
        T result = array.get(0);
        array.remove(0);
        this.elems--;
        return result;
    }
    public void Print_All(){
        if (this.elems == 0) return;
        for (int i=0;i<size;i++){
            System.out.println(this.array.get(i));
        }
    }
}

class Producer extends Thread{
    Buffer<String> bufor;
    public Producer(Buffer<String> bufor){
        this.bufor = bufor;
    }
    private String generuj(int rozmiar){ // generowanie losowego napisu o zadanym rozmiarze
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        Random rnd = new Random();
        String result="";
        for (int i=0;i<rozmiar;i++){
            int nmb = rnd.nextInt(61);
            result+=chars.charAt(nmb);
        }
        return result;
    }
    private void produce() throws InterruptedException{
        String napis = generuj(10);
        this.bufor.Add(napis);
        System.out.println("Produced and inserted: " + napis);
        Thread.sleep(500);
    }
    public void run(){
            try{
                while(true){
                    synchronized(this.bufor){
                        if (this.bufor.size > this.bufor.elems){
                            this.produce();
                            this.bufor.notify();
                        }
                        else{
                            this.bufor.wait();
                        }
                    }
                }
            }catch(Exception e){
                System.out.println("Exception caught");
            }
    }
}
class Consumer extends Thread{
    Buffer<String> bufor;
    public Consumer(Buffer<String> bufor){
        this.bufor = bufor;
    }
    private void consume() throws InterruptedException{
        //while(this.bufor.elems>0){
            Thread.sleep(500);
            System.out.println("Consumed: " + this.bufor.Pop());
        //}
    }
    public void run(){
            try{
                while(true){
                    synchronized(this.bufor){
                        if (this.bufor.elems==0){
                            this.bufor.wait();
                        }
                        else{
                            this.consume();
                            this.bufor.notify();
                        }
                    }
                }
            }catch(Exception e){
                System.out.println("Exception caught");
            }
    }
}

public class ProducerConsumer {
    public static void main(String[] args){
        Buffer<String> bufor = new Buffer<String>(5);
        Producer prod = new Producer(bufor);
        Consumer cons = new Consumer(bufor);
        prod.start();
        cons.start();
    }
}