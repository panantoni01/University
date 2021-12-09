import java.awt.*;
import java.util.*;

public class Powierzchnia extends Canvas { 
    public ArrayList<Kreska> kreski;
    
    public Powierzchnia() {
        this.kreski = new ArrayList<Kreska>();
    }

    public void paint(Graphics gr) {
        gr.clearRect(0, 0, getHeight(), getWidth());
        for (Kreska k : kreski) {
            gr.setColor(k.color);
            gr.drawLine(k.start.x, k.start.y, k.end.x, k.end.y);
            //System.out.println("("+k.start.x+", "+k.start.y+"), ("+k.end.x+","+k.end.y+")");
        }
    }
    
    public boolean is_last_temp() {
        if (kreski.size() == 0)
            return false;
        return kreski.get(kreski.size() - 1).color == Color.GRAY;
    }
}