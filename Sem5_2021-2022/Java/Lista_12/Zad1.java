import java.util.ArrayList;
import java.util.Comparator;
import java.util.regex.*;
import java.io.*;
import java.util.stream.*;

public class Zad1 {
    static int lineToInt(String ln) {
        int result = 0;
        for (char ch : ln.toCharArray()) {
            if (ch == '/')
                return result;
            
            if (Character.isDigit(ch)) {
                result *= 10;
                result += Character.getNumericValue(ch);
            }    
        }

        return result;
    }
    
    static boolean isPrime(int n) {
        if (n == 2)
            return true;
        if (n == 1 || n % 2 == 0)
            return false;
        
        for (int i = 3; i <= Math.sqrt(n); i+=2)
            if (n % i == 0)
                return false;
        
        return true;
    }

    public static void main(String[] args) {
        ArrayList<Integer> arr = new ArrayList<>();
        Pattern pattern = Pattern.compile("^(\\s*[1-9][0-9]{0,8}|10{9})?\\s*(//.*)*$");

        try (BufferedReader br = new BufferedReader(new FileReader("./dane1.txt"))) {
            for (String ln = br.readLine(); ln != null; ln = br.readLine()) {
                Matcher matcher = pattern.matcher(ln);
                if (matcher.matches() && lineToInt(ln) > 0)
                    arr.add(lineToInt(ln));
                else if (!matcher.matches())
                    throw new InvalidFileFormat("Wrong file format!");
            }
        } catch (Exception ex) { 
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }

        System.out.println("SORTOWANIE:");
        arr.stream().sorted(Comparator.reverseOrder()).forEach(System.out::println);
        System.out.println("===========================");
        
        System.out.println("PIERWSZE:");
        arr.stream().filter(n -> isPrime(n)).forEach(System.out::println);
        System.out.println("===========================");

        System.out.println("SUMA MNIEJSZYCH OD 1000:");
        System.out.println(arr.stream().filter(n -> n < 1000).reduce(0, (sub, el) -> sub + el));
        System.out.println("===========================");

        System.out.println("LICZBA PODZIELNYCH PRZEZ 7:");
        System.out.println(arr.stream().filter(n -> n % 7 == 0).count());
        System.out.println("===========================");
    }
}