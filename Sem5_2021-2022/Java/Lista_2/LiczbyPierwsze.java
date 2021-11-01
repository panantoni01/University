import java.lang.Math;

public final class LiczbyPierwsze {
    private final static int POTEGA2 = 21;
    private final static int[] SITO = new int[1 << POTEGA2];
    
    static {
        for (int i = 0; i < 1<<POTEGA2; i++)
            SITO[i] = i;
    
        for (int i = 2; i*i < 1<<POTEGA2; i++) 
            if (SITO[i] == i) 
                for (int j = i*i; j < 1<<POTEGA2; j += i)
                    if (SITO[j] == j)
                        SITO[j] = i;
    }

    private LiczbyPierwsze() {};

    public static boolean czyPierwsza (long x) {
        if (x % 2 == 0 || x == 1)
            return false;

        if (x < 1<<POTEGA2)
            return (x == SITO[(int)x]);    
        
        for (long i = 3; i <= Math.sqrt(x); i += 2) 
            if (x % i == 0)
                return false;
        return true;
    }

    public static long[] naCzynnikiPierwsze (long x) {
        long arr[] = new long[64]; // maksymalną liczbę czynników mamy dla: 2^(63) * (-1)
        
        if (x == -1 | x == 0 | x == 1) { // "Rozkład liczb −1, 0 i 1 ma być tożsamościowy"
            arr[0] = x;
            return arr;
        }
        
        int arr_idx = 0;
        if (x < 0) {   // "Rozkład liczby ujemnej (...) ma się rozpoczynać od czynnika −1"
            arr[arr_idx++] = -1;
            if (x == -9223372036854775808L) { // jeden szczególny przypadek...
                arr[arr_idx++] = 2;
                x /= 2;
            }
            x *= -1;
        } 

        if (czyPierwsza(x)) {
            arr[arr_idx] = x;
            return arr;
        }

        if (x < 1<<POTEGA2) {
            while(x != 1) {
                arr[arr_idx++] = SITO[(int)x];
                x /= SITO[(int)x];
            }
            return arr;
        }
        else { // x >= 1<<POTEGA2
            for (int i = 2; i <= x; i++) {
                if (i < 1<<POTEGA2) {
                    if (SITO[i] != i)
                        continue;
                
                    while(x % SITO[i] == 0) {
                        x /= SITO[i];
                        arr[arr_idx++] = SITO[i];
                        if (x == 1)
                            return arr;
                    }
                }
                else {
                    while(x % i == 0) {
                        x /= i;
                        arr[arr_idx++] = i;
                        if (x == 1)
                            return arr;
                    }
                }
            }
        }
        return arr;
    }
}