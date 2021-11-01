import java.util.Random;

public class HugeArr {
    public int arr[];
    protected int size;

    HugeArr(int size) {
        this.size = size;
        arr = new int[size];
        Random random = new Random();

        for (int i = 0; i < size; i++) {
            arr[i] = random.nextInt(size);
        }
    }
}