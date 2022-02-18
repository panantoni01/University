import java.util.regex.Pattern;
import java.util.Comparator;
import java.util.regex.*;
import java.io.*;
import java.util.stream.*;
import java.util.LinkedList;

public class Zad2 {
    static Triangle lineToTriangle(String ln) {
        double[] sides = new double[] {0, 0, 0};
        int idx = 0;
        
        String tmp = "";
        for (char ch : ln.toCharArray()) {
            if (ch == '/')
                break;
            if (Character.isDigit(ch) || ch == '.')
                tmp += ch;
            else if (tmp != "") {
                sides[idx++] = Double.parseDouble(tmp);
                tmp = "";
            }
        }
        if (tmp != "") {
            sides[idx++] = Double.parseDouble(tmp);
            tmp = "";
        }

        if (idx != 3)
            return null;
        return new Triangle(sides[0], sides[1], sides[2]);
    }   
    
    public static void main(String[] args) {
        LinkedList<Triangle> list = new LinkedList<>();
        Pattern pattern = Pattern.compile("^(\\s*([0-9]+(\\.[0-9]*){0,1}\\s+){2}[0-9]+(\\.[0-9]*){0,1})?\\s*(//.*){0,1}$");
    
        try (BufferedReader br = new BufferedReader(new FileReader("./dane2.txt"))) {
            for (String ln = br.readLine(); ln != null; ln = br.readLine()) {
                Matcher matcher = pattern.matcher(ln);
                if (matcher.matches() && lineToTriangle(ln) != null)
                    list.add(lineToTriangle(ln));
                else if (!matcher.matches())
                    throw new InvalidFileFormat("Wrong file format!");
            }
        } catch (Exception ex) { 
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }

        System.out.println("\n\nSORTOWANIE WG OBWODU:");
        list.stream().sorted(Comparator.comparing(Triangle::getCircuit)).forEach(System.out::println);
        System.out.println("===========================");

        System.out.println("PROSTOKATNE:");
        list.stream().filter(t -> t.isRight()).forEach(System.out::println);
        System.out.println("===========================");

        System.out.println("ILE RÓWNOBOCZNYCH:");
        System.out.println(list.stream().filter(t -> t.isEquilateral()).count());
        System.out.println("===========================");

        System.out.println("POLE MIN/MAX:");
        System.out.println("Min: " + list.stream().min(Comparator.comparing(Triangle::getArea)).orElse(null));
        System.out.println("Max: " + list.stream().max(Comparator.comparing(Triangle::getArea)).orElse(null));
        System.out.println("===========================");
    }
}