import java.util.Random;

class Fork {
    boolean taken;
    int id;

    public Fork(int myID) {
        id = myID;
    }

    public synchronized void get() throws InterruptedException {
        while (taken) {
            wait();
        }
        taken = true;
    }

    public synchronized void put() {
        taken = false;
        notify();
    }
}


class Philosopher extends Thread {
    int id;
    Fork left;
    Fork right;

    public Philosopher(int myID, Fork myLeft, Fork myRight) {
        id = myID;
        left = myLeft;
        right = myRight;
    }

    public void run() {
        Random random = new Random();
        while (true) {
            try {
                sleep(random.nextInt(10));
                sleep(1);
                System.out.println("Philosopher " + id + " is hungry");
                if (id == 0) {
                    right.get();
                    left.get();
                }
                else {
                    left.get();
                    right.get();
                }
                left.put();
                right.put();
            } catch (InterruptedException ex) {
                return;
            }
        }
    }

}

public class Main {
    static final int N = 5;

    public static void main(String[] args) throws InterruptedException {
        System.out.println("Starting...");

        Fork forks[] = new Fork[N];
        Philosopher philos[] = new Philosopher[N];

        for (int i = 0; i < N; i++)
            forks[i] = new Fork(i);

        Philosopher p;

        for (int i = 0; i < N; i++) {
            p = new Philosopher(i,
                    forks[i],
                    forks[(i + 1) % N]);
            philos[i] = p;
            p.start();
        }

        for (int i = 0; i < N; i++) {
            System.out.printf("Waiting for philosopher %d to finish\n", i);
            philos[i].join();
        }
    }
}
