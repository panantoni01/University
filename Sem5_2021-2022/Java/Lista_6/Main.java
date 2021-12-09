import java.text.SimpleDateFormat;
import java.util.Date;

import structures.*;

public class Main {
    public static void main(String[] args) {
        // OrderedList<Integer> list = new OrderedList<Integer>();
        // try {
        //     list.insert(3);
        //     list.insert(6);
        //     list.insert(5);
        //     list.insert(2);
        //     list.insert(4);
        //     list.insert(7);
        //     list.insert(1);
        //     list.insert(8);

        //     list.remove(4);
        //     list.remove(1);
        //     list.remove(8);
        //     list.remove(10);

        //     list.insert(4);
        //     list.insert(1);
        //     list.insert(8);
        //     list.insert(8);
        // } catch(Exception exc) {
        //     System.out.println(exc.getMessage());
        // }

        // System.out.println(list);
        // System.out.println("Size: " + String.valueOf(list.size()));
        // try {
        //     System.out.println("Max: " + String.valueOf(list.max()));
        //     System.out.println("Min: " + String.valueOf(list.min()));
        // } catch(Exception exc) {
        //     System.out.println(exc.getMessage());
        // }

        // try {
        //     System.out.println("==================");
        //     System.out.println(String.valueOf(list.search(8)));
        //     System.out.println(String.valueOf(list.search(2)));
        //     System.out.println(String.valueOf(list.search(100)));
        // } catch(Exception exc) {
        //     System.out.println(exc.getMessage());
        // }

        // try {
        //     System.out.println("==================");
        //     System.out.println(String.valueOf(list.index(8)));
        //     System.out.println(String.valueOf(list.index(2)));
        //     System.out.println(String.valueOf(list.index(100)));
        // } catch(Exception exc) {
        //     System.out.println(exc.getMessage());
        // }

        // try {
        //     System.out.println("==================");
        //     System.out.println(String.valueOf(list.at(7)));
        //     System.out.println(String.valueOf(list.at(1)));
        //     System.out.println(String.valueOf(list.at(100)));
        // } catch(Exception exc) {
        //     System.out.println(exc.getMessage());
        // }

        // try {
        //     System.out.println("==================");
        //     for (Integer i : list) {
        //         System.out.println(i);
        //     }
        // } catch(Exception exc) {
        //     System.out.println(exc.getMessage());
        // }

        //=======================================

        OrderedList<String> list = new OrderedList<String>();
        try {
            list.insert("three");
            list.insert("six");
            list.insert("five");
            list.insert("two");
            list.insert("seven");
            list.insert("four");
            list.insert("one");
            list.insert("eight");

            list.remove("four");
            list.remove("one");
            list.remove("eight");
            list.remove("one");

            list.insert("four");
            list.insert("one");
            list.insert("eight");
            list.insert("eight");
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }

        System.out.println(list);
        System.out.println("Size: " + (list.size()));
        try {
            System.out.println("Max: " + (list.max()));
            System.out.println("Min: " + (list.min()));
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }

        try {
            System.out.println("==================");
            System.out.println((list.search("eight")));
            System.out.println((list.search("two")));
            System.out.println((list.search("twelve")));
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }

        try {
            System.out.println("==================");
            System.out.println((list.index("eight")));
            System.out.println((list.index("two")));
            System.out.println((list.index("twelve")));
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }

        try {
            System.out.println("==================");
            System.out.println((list.at(7)));
            System.out.println((list.at(1)));
            System.out.println((list.at(100)));
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }

        try {
            System.out.println("==================");
            for (String i : list) {
                System.out.println(i);
            }
        } catch(Exception exc) {
            System.out.println(exc.getMessage());
        }

        //=============================================
        // OrderedList<Date> list = new OrderedList<Date>();
        // try {
        //     list.insert(new SimpleDateFormat("yyyy.MM.dd").parse("2021.11.25"));
        //     list.insert(new SimpleDateFormat("yyyy.MM.dd").parse("2021.11.24"));
        //     list.insert(new SimpleDateFormat("yyyy.MM.dd").parse("2021.11.26"));
        //     list.insert(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 14:15"));
        //     list.insert(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 12:54"));

        //     list.remove(new SimpleDateFormat("yyyy.MM.dd").parse("2021.11.26"));
        //     list.remove(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 14:15"));
        //     list.remove(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 14:16"));

        //     list.insert(new SimpleDateFormat("yyyy.MM.dd").parse("2021.11.26"));
        //     list.insert(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 14:15"));
        //     list.insert(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 14:15"));
        // } catch (Exception exc) {
        //     System.out.println(exc.getMessage());
        // }
        
        // System.out.println(list);
        // for (Date date : list) {
        //     System.out.println(date);
        // }

        // System.out.println("==================");

        // try {
        //     System.out.println(list.index(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 14:15")));
        //     System.out.println(list.index(new SimpleDateFormat("yyyy.MM.dd HH:mm").parse("2021.11.25 14:16")));
        // } catch (Exception exc) {
        //     System.out.println(exc.getMessage());
        // }
    }
}