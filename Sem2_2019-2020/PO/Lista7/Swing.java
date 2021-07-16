import java.io.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.event.*;
import java.awt.BorderLayout;
import java.awt.Container;
import java.io.File;

abstract class Pojazd implements Serializable{
    String name;
    int max_speed;
    String connected_file;
    abstract public String toString();
    public void SavetoFile(){
        try{
            FileOutputStream fileOutputStream = new FileOutputStream(connected_file);
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
            objectOutputStream.writeObject(this);
            objectOutputStream.close();
        } catch(Exception e){
            System.out.println("Nastąpił błąd zapisu");
        }
    }
    abstract public void ReadfromFile();
    abstract public void Edit();
}
class Samochod extends Pojazd {
    private static final long serialVersionUID = 1;
    String fuel_type;
    public Samochod(String file){ 
        this.connected_file = file; 
    }
    public Samochod(String name, int speed, String fuel,String file){
        this.name = name;
        this.max_speed = speed;
        this.fuel_type = fuel;
        this.connected_file = file;
    }
    public String toString(){
        return "Marka: "+this.name+"; maks. prędkość: "+this.max_speed+" km/h"+"; paliwo: "+this.fuel_type+"\n";
    }
    public void Edit(){
        Samochod_Swing s = new Samochod_Swing();
    }
    public void ReadfromFile (){
        try{
            FileInputStream fileInputStream = new FileInputStream(connected_file);
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
            //@SuppressWarnings("unchecked")
            Samochod temp_pojazd = (Samochod) objectInputStream.readObject();
            objectInputStream.close();
            this.name = temp_pojazd.name;
            this.max_speed = temp_pojazd.max_speed;
            this.fuel_type = temp_pojazd.fuel_type;
        } catch(Exception e){
            System.out.println("Obiekt w pliku "+connected_file+" jest innej klasy niż Tramwaj");
        }
    }
    class Samochod_Swing extends JFrame{
        public Samochod_Swing(){
            super("Edycja samochodu");
            setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            Container container = getContentPane();
            GridLayout grid = new GridLayout(4,2);
            container.setLayout(grid);
    
            JLabel name_label = new JLabel("Marka");
            container.add(name_label);
            JTextField name_set = new JTextField(name,25);
            container.add(name_set);
    
            JLabel max_speed_label = new JLabel("Maks. prędkość");
            container.add(max_speed_label);
            JTextField max_speed_set = new JTextField(Integer.toString(max_speed),5);
            container.add(max_speed_set);
    
            JLabel fuel_type_label = new JLabel("Typ paliwa");
            container.add(fuel_type_label);
            JTextField fuel_type_set = new JTextField(fuel_type,10);
            container.add(fuel_type_set);
    
            JLabel emptyJLabel = new JLabel();
            container.add(emptyJLabel);
            
            JButton button = new JButton("Zapisz");
            button.addActionListener(
                new ActionListener(){
                    public void actionPerformed(ActionEvent e){
                        try{
                            name = name_set.getText();
                            max_speed = Integer.parseInt(max_speed_set.getText());
                            fuel_type = fuel_type_set.getText();
                            SavetoFile();
                            System.out.println("Pomyślnie zapisano dane do pliku "+"\""+connected_file+"\"");
                        }catch(Exception exception){
                            System.out.println("Nastąpił błąd");
                        }
                    }
                }
            );
            container.add(button);
            pack();
            setVisible(true);
        }
    }
    
}
class Tramwaj extends Pojazd{
    private static final long serialVersionUID = 2;
    int max_passengers;
    public Tramwaj(String file){ 
        this.connected_file = file;
    }
    public Tramwaj(String name, int speed, int passengers,String file){
        this.name = name;
        this.max_speed = speed;
        this.max_passengers = passengers;
        this.connected_file = file;
    }
    public String toString(){
        return "Marka: "+this.name+"; maks. prędkość: "+this.max_speed+" km/h"+"; maks. pasażerów: "+this.max_passengers+"\n";
    }
    public void Edit(){
        Tramwaj_Swing t = new Tramwaj_Swing();
    }
    public void ReadfromFile (){
        try{
            FileInputStream fileInputStream = new FileInputStream(connected_file);
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
            //@SuppressWarnings("unchecked")
            Tramwaj temp_pojazd = (Tramwaj) objectInputStream.readObject();
            objectInputStream.close();
            this.name = temp_pojazd.name;
            this.max_speed = temp_pojazd.max_speed;
            this.max_passengers = temp_pojazd.max_passengers;
        } catch(Exception e){
            System.out.println("Obiekt w pliku "+connected_file+" jest innej klasy niż Tramwaj");
        }
    }
    class Tramwaj_Swing extends JFrame{
        public Tramwaj_Swing(){
            super("Edycja tramwaju");
            setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            Container container = getContentPane();
            GridLayout grid = new GridLayout(4,2);
            container.setLayout(grid);
    
            JLabel name_label = new JLabel("Marka");
            container.add(name_label);
            JTextField name_set = new JTextField(name,25);
            container.add(name_set);
    
            JLabel max_speed_label = new JLabel("Maks. prędkość");
            container.add(max_speed_label);
            JTextField max_speed_set = new JTextField(Integer.toString(max_speed),5);
            container.add(max_speed_set);
    
            JLabel max_passengers_label = new JLabel("Maks. pasażerów");
            container.add(max_passengers_label);
            JTextField max_passengers_set = new JTextField(Integer.toString(max_passengers),10);
            container.add(max_passengers_set);
    
            JLabel emptyJLabel = new JLabel();
            container.add(emptyJLabel);
            
            JButton button = new JButton("Zapisz");
            button.addActionListener(
                new ActionListener(){
                    public void actionPerformed(ActionEvent e){
                        try{
                            name = name_set.getText();
                            max_speed = Integer.parseInt(max_speed_set.getText());
                            max_passengers = Integer.parseInt(max_passengers_set.getText());
                            SavetoFile();
                            System.out.println("Pomyślnie zapisano dane do pliku "+"\""+connected_file+"\"");
                        }catch(Exception exception){
                            System.out.println("Nastąpił błąd");
                        }
                    }
                }
            );
            container.add(button);
            pack();
            setVisible(true);
        }
    }
}

//============================

public class Swing{
    public static void main(String[] args){
        String file_name = args[0];
        String class_name = args[1];
        Pojazd pojazd;
        File tempFile = new File(file_name);
        boolean exists = tempFile.exists();
        System.out.println(class_name);
        if (class_name.compareTo("Samochod")==0){
            pojazd = new Samochod(file_name);
        }
        else if (class_name.compareTo("Tramwaj")==0){
            pojazd = new Tramwaj(file_name);
        }
        else{
            pojazd = new Samochod(file_name);
            System.out.println("Nieprawidłowa nazwa klasy; wybierz spośród Samochod/Tramwaj");
            System.exit(1);
        }
        if (exists == true) pojazd.ReadfromFile();
        pojazd.Edit();
    }
}
