
public class Main {    
    public static void main(String[] args) {
        if (args.length == 0) {
            System.err.println("usage: java Main <long ints>");
            System.exit(1);
        }
        
        for (String str : args) {
            long n = Long.parseLong(str);
            long arr[] = LiczbyPierwsze.naCzynnikiPierwsze(n);
            
            System.out.print(n + " = ");
            for (int i = 0; i < arr.length && arr[i] != 0; i++) {
                if (i == arr.length - 1 || arr[i+1] == 0) {
                    System.out.print(arr[i]);
                }
                else {
                    System.out.print(arr[i] + " * ");
                }
            }
            System.out.print('\n');
        }
    }
}