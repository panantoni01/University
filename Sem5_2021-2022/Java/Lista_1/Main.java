import java.util.*;
import java.math.BigInteger;

public class Main {
    public static BigInteger silnia(int n)  {
        BigInteger result = BigInteger.valueOf(1);
        for (int i = 1; i <= n; i++) 
           result = result.multiply(BigInteger.valueOf(i));
        return result;
    }
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();

        if (n < 0) {
            System.err.println("Podano zbyt małą wartość");
            System.exit(1);
        }
        if (n > 100) {
            System.err.println("Podano zbyt dużą wartość");
            System.exit(1);
        } 
        
        System.out.println(n + "! = " + silnia(n));

        sc.close();
    }
}