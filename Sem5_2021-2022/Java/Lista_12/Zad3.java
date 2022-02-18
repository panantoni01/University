import java.util.function.BinaryOperator;
import java.util.function.UnaryOperator;

public class Zad3 {
    final static UnaryOperator<Integer> collatz = i -> i == 1
        ? 1 
        : i % 2 == 0 
            ? 1 + Zad3.collatz.apply(i/2) 
            : 1 + Zad3.collatz.apply(3*i + 1); 

    final BinaryOperator<Integer> gcd = (a, b) -> b == 0 
        ? a
        : this.gcd.apply(b, a % b);
    
    
    public static void main(String[] args) {
        Zad3 zad3 = new Zad3();
        System.out.println(Zad3.collatz.apply(1));
        System.out.println(Zad3.collatz.apply(4));
        System.out.println(Zad3.collatz.apply(15));
        System.out.println(Zad3.collatz.apply(27));
        System.out.println("==================");
        System.out.println(zad3.gcd.apply(1, 4));
        System.out.println(zad3.gcd.apply(42, 56));
        System.out.println(zad3.gcd.apply(192, 348));
        System.out.println(zad3.gcd.apply(1071, 462));
    }
}