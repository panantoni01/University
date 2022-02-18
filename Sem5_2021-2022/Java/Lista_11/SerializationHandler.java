import java.io.*;
import graphtools.*;

public class SerializationHandler {
    private File file;
    private String path;
    private Graph graph;

    public SerializationHandler(File file, Graph graph) {
        this.file = file;
        this.path = file.getAbsolutePath();
        this.graph = graph;
    }

    /* returns true if a graph was successfully save, else returns false */
    public boolean saveTxt(){
        if (!path.endsWith(".txt")) 
            return false;
        else {
            try {
                FileWriter fWriter = new FileWriter(file);
                fWriter.write(graph.toString());
                fWriter.close();
            } catch (IOException e) {
                System.out.println("Error occured.");
                e.printStackTrace();
                return false;
            }
            return true;
        }
    }

    public void serializeGraph() {
        try (ObjectOutputStream fos = new ObjectOutputStream(new FileOutputStream(file))) {
            fos.writeObject(graph);
        } catch (Exception e) {
            System.out.println("An error occured while serialization");
            e.printStackTrace();
        }
    }

    public void deserializeGraph() {
        try (ObjectInputStream fis = new ObjectInputStream(new FileInputStream(file))) {
            this.graph = (Graph) fis.readObject();
        } catch (Exception e) {
            System.out.println("An error occured while deserialization");
            e.printStackTrace();
        }
    }

    public Graph getGraph() {
        return this.graph;
    }
}