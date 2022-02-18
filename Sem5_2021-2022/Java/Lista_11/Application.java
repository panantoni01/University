import graphtools.*;
import java.io.*;
import javax.swing.*;
import javax.swing.event.MouseInputAdapter;

import java.awt.*;
import java.awt.image.*;
import java.awt.event.*;

public class Application extends JFrame{
    JScrollPane scrollPane;
    Drawing drawing;

    public Application(int size_x, int size_y) {
        super("Graph edition");
        
        drawing = new Drawing(new Graph(), size_x, size_y);
        scrollPane = new JScrollPane(drawing);

        setSize(size_x, size_y);
        setLocation(80, 80);
        setResizable(false);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        add(scrollPane, BorderLayout.CENTER);
        setVisible(true);

        addKeyListener(saveListener);
        addWindowListener(closeListener);
    }

    private WindowListener closeListener = new WindowAdapter() {              
        File file = new File("graph.ser");

        public void windowOpened(WindowEvent event) {
            if (file.length() == 0)
                return;
            
            int dialogResult = JOptionPane.showOptionDialog(null, 
                "Load recently created graph?", "Load", JOptionPane.YES_NO_OPTION, 
                JOptionPane.QUESTION_MESSAGE, null, null, null);

            if (dialogResult == JOptionPane.YES_OPTION) {
                SerializationHandler sHandler = new SerializationHandler(file, drawing.graph);
                sHandler.deserializeGraph();
                drawing.graph = sHandler.getGraph();
                drawing.paintGraph();
            }
        }
        
        public void windowClosing(WindowEvent event) {
            int dialogResult = JOptionPane.showOptionDialog(null, 
                "Save created graph?", "Save", JOptionPane.YES_NO_OPTION, 
                JOptionPane.QUESTION_MESSAGE, null, null, null);

            if (dialogResult == JOptionPane.YES_OPTION) {
                SerializationHandler sHandler = new SerializationHandler(file, drawing.graph);
                sHandler.serializeGraph();
            }
        }
    };

    private KeyListener saveListener = new KeyAdapter() {
        private boolean ctrl_pressed = false;
        private boolean s_pressed = false;
        
        public void keyPressed(KeyEvent event) {
            switch(event.getKeyCode()) {
                case KeyEvent.VK_CONTROL:
                    ctrl_pressed = true;
                    break;
                case KeyEvent.VK_S:
                    s_pressed = true;
                    break;
                default:
                    break;
            }
            
            /* saving graph to user-defined file */
            if (ctrl_pressed && s_pressed) {
                JFrame fileChooserFrame = new JFrame();
                JFileChooser fileChooser = new JFileChooser();
                fileChooser.setDialogTitle("Choose a file");
                int dialogResult = fileChooser.showSaveDialog(fileChooserFrame);
                
                if (dialogResult == JFileChooser.APPROVE_OPTION) {
                    File fileToSave = fileChooser.getSelectedFile();
                    SerializationHandler sHandler = new SerializationHandler(fileToSave, drawing.graph);
                    if (!sHandler.saveTxt())
                        JOptionPane.showMessageDialog(fileChooserFrame, "Wrong file format - should be \".txt\"");
                    
                    fileChooserFrame.setVisible(false);
                    fileChooserFrame.dispose();
                }
            }
        }
        public void keyReleased(KeyEvent event) {
            switch(event.getKeyCode()) {
                case KeyEvent.VK_CONTROL:
                    ctrl_pressed = false;
                    break;
                case KeyEvent.VK_S:
                    s_pressed = false;
                    break;
                default:
                    break;
            }
        }
    };
}

class Drawing extends JLabel {
    protected Graph graph; 
    private BufferedImage image;
    private Graphics graphics;
    private int size_x;
    private int size_y;
    private static final int ALIGN = 64;
    private static final int CIRCLE_SIZE = 3*ALIGN/4;
    private boolean dragged = false;
    private int drag_x;
    private int drag_y;


    public Drawing(Graph graph, int size_x, int size_y) {
        this.graph = graph;
        this.size_x = size_x;
        this.size_y = size_y;
        
        image = new BufferedImage(size_x, size_y, BufferedImage.TYPE_INT_RGB);
        graphics = image.createGraphics();
        setIcon(new ImageIcon(image));

        addMouseListener(doubleClick);
        addMouseListener(dragAndDrop);
    }

    /* https://stackoverflow.com/questions/27706197/how-can-i-center-graphics-drawstring-in-java */
    private void drawCenteredString(String string, int oval_x, int oval_y) {
        FontMetrics fontMetrics = graphics.getFontMetrics();
        int x = oval_x + ALIGN/8 + (CIRCLE_SIZE - fontMetrics.stringWidth(string))/2;
        int y = oval_y + ALIGN/8 + ((CIRCLE_SIZE - fontMetrics.getHeight())/2) + fontMetrics.getAscent();
        graphics.drawString(string, x, y);
    }
    
    /* https://stackoverflow.com/questions/47369565/connect-two-circles-with-a-line */
    private void drawLineBetweenCircles(int start_x, int start_y, int end_x, int end_y) {
        int radius = CIRCLE_SIZE/2;
        int delta_x = end_x - start_x;
        int delta_y = end_y - start_y;
        
        double rotation1 = -Math.atan2(delta_x, delta_y);
        rotation1 = Math.toRadians(Math.toDegrees(rotation1) + 180);
        double rotation2 = -Math.atan2(-delta_x, -delta_y);
        rotation2 = Math.toRadians(Math.toDegrees(rotation2) + 180);

        rotation1 = rotation1 - Math.toRadians(90.0);
        double x1 = Math.round((double)start_x + Math.cos(rotation1)*radius);
        double y1 = Math.round((double)start_y + Math.sin(rotation1)*radius);
        rotation2 = rotation2 - Math.toRadians(90.0);
        double x2 = Math.round((double)end_x + Math.cos(rotation2)*radius);
        double y2 = Math.round((double)end_y + Math.sin(rotation2)*radius);
        graphics.drawLine((int)x1, (int)y1, (int)x2, (int)y2);
    }
    
    protected void paintGraph() {
        graphics.clearRect(0, 0, size_x, size_y);
        
        for (Vertex vertex : graph.getVertices()) {
            graphics.drawOval(vertex.getX() + ALIGN/8, vertex.getY() + ALIGN/8, CIRCLE_SIZE, CIRCLE_SIZE);
            drawCenteredString(String.valueOf(vertex.getNr()), vertex.getX(), vertex.getY());
        }
        for (Edge edge : graph.getEdges()) {
            Vertex v1 = edge.getStart();
            Vertex v2 = edge.getEnd();
            drawLineBetweenCircles(v1.getX() + ALIGN/2, v1.getY() + ALIGN/2, v2.getX() + ALIGN/2, v2.getY() + ALIGN/2);
        }
        
        this.validate();
        this.repaint();
    }

    /* "coord" should be multiple of 64, and should not lie at the edge */
    private int adjustCoord(int coord) {
        int coord_new = (coord / ALIGN) * ALIGN;
        if (coord_new == 0)
            coord_new += ALIGN;
        else if (coord_new == size_x - ALIGN)
            coord_new -= ALIGN;
        return coord_new;
    }

    /* add/delete vertices */
    private MouseListener doubleClick = new MouseInputAdapter() {
        public void mouseClicked(MouseEvent event) {
            if (event.getClickCount() == 2 && event.getButton() == MouseEvent.BUTTON1) {
                /* adjust the coordinates */
                int x = adjustCoord(event.getX());
                int y = adjustCoord(event.getY());
                    
                /* add vertex to the graph */
                Vertex vertex = graph.findVertexByCoords(x, y);
                if (vertex != null)
                    graph.delVertex(vertex.getNr());
                else 
                    graph.addVertex(x, y);
                
                paintGraph();
            }
        }  
    };

    /* add/delete edges */
    private MouseListener dragAndDrop = new MouseInputAdapter() {
        public void mousePressed(MouseEvent event) {
            dragged = true;
            drag_x = adjustCoord(event.getX());
            drag_y = adjustCoord(event.getY());
        }

        public void mouseReleased(MouseEvent event) {
            if (dragged == false)
                return;
            
            dragged = false;
            int end_x = adjustCoord(event.getX());
            int end_y = adjustCoord(event.getY());
            if (end_x == drag_x && end_y == drag_y)
                return;
            
            Vertex v1 = graph.findVertexByCoords(drag_x, drag_y);
            Vertex v2 = graph.findVertexByCoords(end_x, end_y);
            if (v1 == null) /* some random dragging... */
                return;
            if (v2 == null) { /* change v1 coordinates */
                v1.move(end_x, end_y);
            }
            else { /* add/delete new edge*/
                Edge edge = graph.findEdge(v1.getNr(), v2.getNr());
                if (edge != null) 
                    graph.delEdge(v1.getNr(), v2.getNr());
                else
                    graph.addEdge(v1.getNr(), v2.getNr());
            }

            paintGraph();
        }
    };
}