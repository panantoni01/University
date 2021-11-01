
class MergeSort implements Runnable {
    protected int arr[];
    protected int l, r;

    MergeSort(int arr[], int l, int r) {
        this.arr = arr;
        this.l = l;
        this.r = r;
    }

    private /*synchronized*/ void merge(int l, int m, int r) {
        int n_left = m - l + 1;
        int n_right = r - m;
        int[] left = new int[n_left];
        int[] right = new int[n_right];

        for (int i = 0; i < n_left; i++) {
            left[i] = arr[l + i];
        }
        for (int i = 0; i < n_right; i++) {
            right[i] = arr[m + 1 + i];
        }
        int i = 0, j = 0;
        int k = l;
        while (i < n_left && j < n_right) {
            if (left[i] <= right[j]) {
                arr[k] = left[i];
                i++;
            } else {
                arr[k] = right[j];
                j++;
            }
            k++;
        }
        while (i < n_left) {
            arr[k] = left[i];
            k++;
            i++;
        }
        while (j < n_right) {
            arr[k] = right[j];
            k++;
            j++;
        }
    }

    public void sort(int l, int r) {
        if (l < r) {
            int m = (l + r) / 2;
            sort(l, m);
            sort(m + 1, r);
            merge(l, m, r);
        }
    }

    @Override
    public void run() {
        if (this.l < this.r) {
            if (this.r - this.l < 20000) {
                sort(this.l, this.r);
            }
            else {
                int m = (this.l + this.r) / 2;
                MergeSort left = new MergeSort(arr, this.l, m);
                MergeSort right = new MergeSort(arr, m + 1, this.r);
                Thread t1 = new Thread(left);
                // Thread t2 = new Thread(right);
                t1.start();
                // t2.start();
                right.run();
                try {
                    t1.join();
                    // t2.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                this.merge(this.l, m, this.r);
            }
        }
    }
}




public class RookieMergeSort {

    public static void main(String[] args) {
        HugeArr hugearr = new HugeArr(10000);
        MergeSort w = new MergeSort(hugearr.arr, 0, 9999);

        Thread t = new Thread(w);

        t.start();
        try {
            t.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // for (int i = 0; i < 10000; i++)
        //     System.out.printf("%d ", hugearr.arr[i]);
        
        for (int i = 0; i < 9998; i++)
            if (hugearr.arr[i+1] < hugearr.arr[i])
                System.out.println("\nARRAY NOT SORTED!!!");

    }
}
