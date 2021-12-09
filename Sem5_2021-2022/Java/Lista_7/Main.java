import java.awt.*;
import java.awt.event.*;


class MyWindow extends Frame {
    private Color current_color;
    private int start_x, start_y, end_x, end_y;
    
    private WindowListener frameList = new WindowAdapter() {
        @Override
        public void windowClosing (WindowEvent ev) {
            MyWindow.this.dispose();
        }
    };

    private boolean good_points() {
        boolean startx_ok = start_x >= 0 && start_x <=getWidth();
        boolean starty_ok = start_y >= 0 && start_y <= getHeight();
        boolean endx_ok = end_x >= 0 && end_x <=getWidth();
        boolean endy_ok = end_y >= 0 && end_y <= getHeight();
        if (startx_ok && starty_ok && endx_ok && endy_ok)
            return true;
        return false;
    }
    
    private MouseListener mouseList = new MouseAdapter() {
        
        @Override
        public void mousePressed(MouseEvent ev) {
            start_x = ev.getX();
            start_y = ev.getY();
            //System.out.println("x="+start_x  + ", y="+start_y);
        }
        @Override
        public void mouseReleased(MouseEvent ev) {
            Graphics gr = canvas.getGraphics();
            end_x = ev.getX();
            end_y = ev.getY(); 
            
            if (good_points()) {
                canvas.kreski.add(new Kreska(new Point(start_x, start_y), new Point(end_x, end_y), current_color));
                canvas.paint(gr);
            }
        }
    };

    private MouseMotionListener mouseMotionList = new MouseMotionAdapter() {
        @Override
        public void mouseDragged(MouseEvent ev) {
            Graphics gr = canvas.getGraphics();
            end_x = ev.getX();
            end_y = ev.getY();
            
            // System.out.println("width="+getWidth()  + ", height="+getHeight());
            // System.out.println("x="+end_x  + ", y="+end_y);
            if (good_points()) {
                if (canvas.is_last_temp())
                    canvas.kreski.remove(canvas.kreski.size() - 1);
                canvas.kreski.add(new Kreska(new Point(start_x, start_y), new Point(end_x, end_y), Color.GRAY));
                canvas.paint(gr);
            }
            else {
                if (canvas.is_last_temp())
                    canvas.kreski.remove(canvas.kreski.size() - 1);
                canvas.paint(gr);
            }
        }
    };

    private KeyListener keyList = new KeyAdapter() {
        @Override
        public void keyPressed (KeyEvent ev) {
            Graphics gr = canvas.getGraphics();
            switch (ev.getKeyCode()) {
                case KeyEvent.VK_BACK_SPACE:
                    canvas.kreski.clear();
                    canvas.paint(gr);
                    break;
                case KeyEvent.VK_F: 
                    canvas.kreski.remove(0);
                    canvas.paint(gr);
                    break;
                case KeyEvent.VK_B: 
                case KeyEvent.VK_L:
                    canvas.kreski.remove(canvas.kreski.size() - 1);
                    canvas.paint(gr);
                    break;
                default:
                    break;
            }
        }
    };
    
    private Powierzchnia canvas = new Powierzchnia();

    private CheckboxGroup checkboxgroup = new CheckboxGroup();
    private Checkbox black = new Checkbox("Black", checkboxgroup, true);
    private Checkbox green = new Checkbox("Green", checkboxgroup, false); 
    private Checkbox red = new Checkbox("Red", checkboxgroup, false); 
    private Checkbox blue = new Checkbox("Blue", checkboxgroup, false);  

    private Panel east = new Panel(new GridLayout(4,1));

    public MyWindow() {
        super("Rysowanie kresek");
        
        current_color = Color.BLACK;
        setSize(600, 600);
        setLocationRelativeTo(null);
        add(canvas, BorderLayout.CENTER);

        black.addItemListener(new ItemListener() {
            public void itemStateChanged(ItemEvent ev) {
                current_color = Color.BLACK;
            }
        });
        green.addItemListener(new ItemListener() {
            public void itemStateChanged(ItemEvent ev) {
                current_color = Color.GREEN;
            }
        });
        red.addItemListener(new ItemListener() {
            public void itemStateChanged(ItemEvent ev) {
                current_color = Color.RED;
            }
        });
        blue.addItemListener(new ItemListener() {
            public void itemStateChanged(ItemEvent ev) {
                current_color = Color.BLUE;
            }
        });
        
        east.add(black);
        east.add(green);
        east.add(red);
        east.add(blue);
        add(east,BorderLayout.EAST);

        canvas.addKeyListener(keyList);
        canvas.addMouseListener(mouseList);
        canvas.addMouseMotionListener(mouseMotionList);
        addWindowListener(frameList);
        setResizable(false);
        canvas.setFocusable(true);
        canvas.requestFocus();
        setVisible(true);
    }
}

public class Main {
    public static void main(String[] args) {
        new MyWindow();
    }
}