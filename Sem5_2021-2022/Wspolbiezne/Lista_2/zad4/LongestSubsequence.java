import javax.sound.midi.Sequence;

class Subsequence {
    public int max_idx;
    public int max_len;
    
    Subsequence(int max_idx, int max_len) {
        this.max_idx = max_idx;
        this.max_len = max_len;
    }
}

class FindSeq implements Runnable {
    protected int arr[];
    protected int l, r;
    public Subsequence seq;

    FindSeq(int arr[], int l, int r) {
        this.arr = arr;
        this.l = l;
        this.r = r;
        this.seq = new Subsequence(l, 1);
    }

    private void merge(int l, int m, int r, Subsequence l_seq, Subsequence r_seq) {
        int idx = m;
        int len = 0;
        Subsequence max = r_seq;
        if (l_seq.max_len > r_seq.max_len)
            max = l_seq;

        if (arr[idx] == arr[idx + 1]) {
            int x = arr[idx];
            while (idx >= 0 && arr[idx] == x) {
                idx--;
                len++;
            }
            idx++;

            for (int i = m+1; i <= r && arr[i] == x; i++)
                len++;

            if (len > max.max_len)
                max = new Subsequence(idx, len);
        }

        this.seq = max;
    }

    @Override
    public void run() {
        if (this.l < this.r) {
            int m = (this.l + this.r) / 2;
            FindSeq left = new FindSeq(arr, this.l, m);
            FindSeq right = new FindSeq(arr, m + 1, this.r);
            Thread t1 = new Thread(left);
            Thread t2 = new Thread(right);
            t1.start();
            t2.start();
            try {
                t1.join();
                t2.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Subsequence l_seq = left.seq;
            Subsequence r_seq = right.seq;
            this.merge(l, m, r, l_seq, r_seq);
        }
    }
}



public class LongestSubsequence {
    public static void main(String[] args) {
        // int arr[] = {1,2,1,2,1,2,1,2,3,3,3};
        // int arr[] = {4, 4, 4, 3};
        int arr[] = {1,2,3,3,4,1};

        FindSeq w = new FindSeq(arr, 0, 5);

        Thread t = new Thread(w);

        t.start();
        try {
            t.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("Idx: " + w.seq.max_idx);
        System.out.println("Len: " + w.seq.max_len);
    }
}