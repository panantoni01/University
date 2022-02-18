import java.net.URL;
import java.util.*;

import kosmos.*;


class PlanetComparator implements Comparator<Planeta> {
    public int compare(Planeta p1, Planeta p2) {
        if (p1.getOdleglosc() != p2.getOdleglosc()) {
            if (p1.getOdleglosc() > p2.getOdleglosc())
                return 1;
            else return -1;
        }
        else
            return p1.compareTo(p2);
    }
}

public class Zad1 {
    public static void main(String[] args) {
        EnumMap<Planeta, URL> enumMap = new EnumMap<>(Planeta.class);
        try {
            enumMap.put(Planeta.ZIEMIA, new URL("https://upload.wikimedia.org/wikipedia/commons/9/97/The_Earth_seen_from_Apollo_17.jpg"));
            enumMap.put(Planeta.WENUS, new URL("https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg"));
            enumMap.put(Planeta.SATURN, new URL("https://upload.wikimedia.org/wikipedia/commons/b/b6/Saturn_during_Equinox_%28cropped%29.jpg"));
            enumMap.put(Planeta.MARS, new URL("https://upload.wikimedia.org/wikipedia/commons/5/56/Mars_Valles_Marineris.jpeg"));
            enumMap.put(Planeta.JOWISZ, new URL("https://upload.wikimedia.org/wikipedia/commons/0/0d/Jupiter_and_its_shrunken_Great_Red_Spot_%28cropped%29.jpg"));
            enumMap.put(Planeta.URAN, new URL("https://upload.wikimedia.org/wikipedia/commons/e/eb/Uranus2_%28cropped%29-1.jpg"));
            enumMap.put(Planeta.MERKURY, new URL("https://upload.wikimedia.org/wikipedia/commons/4/4a/Mercury_in_true_color.jpg"));
            enumMap.put(Planeta.NEPTUN, new URL("https://upload.wikimedia.org/wikipedia/commons/6/63/Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg"));
        
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(1);
        }

        // System.out.println(enumMap);
        // System.out.println("========================================");

        enumMap.entrySet().stream()
            .sorted(Map.Entry.comparingByKey(new PlanetComparator()))
            .forEach(System.out::println);
    }
}