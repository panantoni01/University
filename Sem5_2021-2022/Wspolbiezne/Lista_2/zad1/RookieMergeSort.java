import org.w3c.dom.html.HTMLPreElement;

class MergeSort implements Runnable {
    protected int arr[];
    protected int l, r;
    protected int help_arr[];

    MergeSort(int arr[], int help_arr[], int l, int r) {
        this.arr = arr;
        this.help_arr = help_arr;
        this.l = l;
        this.r = r;
    }

    private /*synchronized*/ void merge(int l, int m, int r) {
        int n_left = m - l + 1;
        int n_right = r - m;

        for (int i = 0; i < n_left; i++) { // tworzymy kopię lewej części
            help_arr[l + i] = arr[l + i];
        }
        for (int i = 0; i < n_right; i++) { // tworzymy kopię prawej części
            help_arr[m + 1 + i] = arr[m + 1 + i];
        }
        int i = l, j = m+1; // "wskaźniki" na lewą i prawą część
        int k = l;        // "wskaźnik" na główną tablicę
        while (i - l < n_left && j - (m+1) < n_right) {
            if (help_arr[i] <= help_arr[j]) {
                arr[k] = help_arr[i];
                i++;
            } else {
                arr[k] = help_arr[j];
                j++;
            }
            k++;
        }
        while (i - l < n_left) {
            arr[k] = help_arr[i];
            k++;
            i++;
        }
        while (j - (m+1) < n_right) {
            arr[k] = help_arr[j];
            k++;
            j++;
        }
    }

    /* public void sort(int l, int r) {  // proces sortowania i scalania odbywa się w całości w run() i merge()
        if (l < r) {
            int m = (l + r) / 2;
            sort(l, m);
            sort(m + 1, r);
            merge(l, m, r);
        }
    } */

    @Override
    public void run() {
        if (this.l < this.r) {
            int m = (this.l + this.r) / 2;
            MergeSort left = new MergeSort(arr, help_arr, this.l, m);
            MergeSort right = new MergeSort(arr, help_arr, m + 1, this.r);
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
            this.merge(this.l, m, this.r);
        }
    }
}


public class RookieMergeSort {

    public static void main(String[] args) {
        int arr[] = { 496, 896, 63, 84, 921, 253, 583, 646, 740, 5, 430, 334, 372, 789, 635, 17, 65, 861, 574, 74, 538, 101, 912, 51, 511, 743, 443, 648, 118, 197, 275, 354, 878, 588, 73, 16, 584, 330, 3, 275, 843, 266, 462, 74, 428, 497, 725, 461, 485, 384, 726, 460, 236, 403, 259, 957, 835, 378, 144, 187, 901, 264, 500, 538, 187, 176, 778, 219, 600, 15, 761, 235, 871, 129, 649, 600, 807, 849, 558, 739, 811, 926, 800, 967, 169, 755, 661, 733, 428, 522, 445, 337, 616, 895, 953, 211, 569, 835, 57, 890, 560, 895, 539, 379, 156, 896, 14, 354, 299, 311, 636, 254, 491, 549, 716, 755, 988, 83, 155, 526, 596, 402, 185, 194, 191, 246, 477, 72, 73, 705, 121, 669, 173, 323, 138, 20, 129, 909, 800, 136, 232, 506, 465, 21, 655, 748, 246, 123, 7, 222, 597, 712, 63, 583, 778, 637, 471, 836, 476, 463, 643, 101, 292, 866, 375, 572, 810, 444, 223, 65, 278, 403, 586, 896, 766, 249, 867, 29, 73, 964, 511, 429, 139, 801, 335, 795, 138, 932, 316, 925, 877, 262, 645, 795, 606, 342, 813, 515, 737, 416, 674, 807, 173, 272, 647, 760, 270, 520, 882, 193, 655, 329, 338, 725, 880, 214, 542, 702, 382, 495, 513, 523, 410, 470, 130, 505, 73, 656, 588, 81, 248, 138, 851, 427, 429, 210, 875, 952, 766, 423, 660, 67, 773, 45, 763, 230, 5, 342, 395, 169, 486, 917, 480, 536, 601, 22, 807, 922, 367, 799, 891, 468, 955, 998, 382, 228, 542, 380, 190, 119, 574, 140, 822, 129, 458, 483, 59, 438, 217, 6, 418, 173, 64, 140, 380, 55, 299, 915, 447, 91, 691, 163, 915, 773, 701, 296, 329, 693, 978, 386, 731, 325, 3, 328, 655, 122, 354, 949, 211, 763, 266, 826, 959, 307, 463, 619, 854, 805, 113, 302, 545, 568, 993, 308, 621, 969, 740, 212, 758, 331, 809, 382, 867, 403, 40, 494, 796, 233, 656, 954, 8, 357, 464, 295, 242, 313, 679, 109, 176, 229, 344, 136, 108, 724, 923, 310, 764, 932, 66, 454, 444, 232, 587, 954, 103, 294, 198, 650, 342, 857, 966, 699, 861, 967, 398, 597, 382, 571, 169, 214, 651, 813, 187, 850, 33, 594, 901, 112, 860, 577, 934, 600, 765, 503, 416, 440, 29, 189, 981, 963, 811, 743, 31, 993, 375, 327, 603, 476, 239, 761, 120, 907, 630, 689, 952, 767, 962, 632, 733, 140, 150, 29, 420, 163, 335, 105, 247, 454, 268, 249, 520, 717, 802, 610, 264, 127, 767, 891, 447, 623, 527, 148, 780, 412, 577, 511, 690, 915, 922, 570, 15, 243, 140, 52, 44, 270, 674, 141, 39, 396, 885, 840, 597, 538, 697, 115, 571, 31, 843, 649, 875, 313, 272, 241, 702, 793, 71, 903, 517, 56, 158, 673, 89, 297, 7, 412, 244, 666, 838, 868, 349, 360, 871, 666, 125, 184, 187, 876, 696, 12, 907, 274, 488, 406, 559, 801, 621, 592, 836, 87, 767, 532, 736, 370, 321, 253, 623, 555, 212, 472, 612, 498, 615, 483, 939, 269, 499, 557, 919, 782, 713, 100, 558, 122, 213, 108, 163, 202, 609, 196, 31, 683, 290, 527, 754, 777, 562, 857, 462, 781, 494, 577, 258, 281, 636, 458, 535, 446, 527, 784, 904, 576, 598, 751, 393, 996, 102, 330, 40, 333, 117, 423, 110, 104, 939, 268, 778, 161, 436, 478, 216, 772, 377, 479, 430, 821, 135, 337, 16, 730, 57, 309, 87, 787, 701, 696, 249, 330, 96, 508, 140, 536, 960, 730, 303, 220, 779, 537, 460, 966, 629, 804, 905, 547, 811, 980, 663, 414, 541, 797, 575, 76, 467, 167, 174, 102, 49, 316, 825, 914, 66, 786, 267, 40, 246, 225, 500, 359, 314, 459, 383, 973, 815, 276, 660, 98, 753, 296, 279, 645, 572, 929, 877, 157, 446, 15, 624, 322, 210, 21, 809, 268, 485, 225, 945, 229, 745, 670, 255, 137, 385, 280, 863, 913, 734, 474, 853, 318, 981, 578, 844, 992, 237, 974, 876, 26, 970, 979, 706, 799, 613, 158, 30, 292, 353, 120, 979, 728, 51, 952, 7, 822, 676, 322, 913, 827, 64, 133, 298, 665, 924, 614, 583, 327, 748, 219, 600, 70, 210, 724, 908, 567, 629, 86, 787, 714, 563, 441, 685, 155, 248, 596, 845, 770, 539, 114, 328, 909, 546, 461, 769, 488, 230, 632, 93, 844, 382, 233, 696, 26, 603, 76, 740, 546, 31, 277, 843, 571, 529, 506, 440, 241, 813, 964, 354, 662, 266, 178, 479, 693, 958, 923, 859, 988, 338, 653, 19, 377, 39, 118, 983, 550, 47, 421, 855, 118, 263, 506, 497, 924, 952, 32, 599, 283, 606, 58, 754, 465, 830, 746, 52, 228, 962, 876, 176, 204, 39, 27, 704, 929, 940, 366, 322, 429, 377, 6, 241, 215, 328, 815, 397, 40, 771, 79, 409, 148, 863, 550, 297, 268, 70, 507, 588, 264, 219, 567, 915, 431, 474, 79, 572, 875, 476, 456, 448, 219, 443, 536, 368, 31, 112, 526, 171, 539, 487, 633, 697, 145, 148, 437, 146, 47, 869, 746, 813, 702, 816, 995, 356, 619, 382, 815, 910, 939, 12, 69, 589, 719, 721, 288, 956, 491, 723, 993, 556, 463, 822, 6, 369, 842, 216, 940, 540, 755, 56, 402, 696, 549, 590, 376, 812, 959, 932, 732, 142, 650, 128, 528, 138, 598, 986, 197, 156, 222, 302, 129, 612, 293, 988, 12, 182, 701, 208, 23, 565, 199, 970, 930, 573, 918, 598, 103, 785, 186, 376, 73, 366, 670, 919, 670, 885, 17, 52, 37, 449, 986, 999, 643, 789, 48, 747, 151, 266, 380, 499, 754, 437, 915, 885, 114, 616, 274, 902, 932, 287, 51, 641, 824, 709, 58, 38, 336, 35, 838, 618, 322, 105, 55, 984, 534, 145, 586, 186, 929, 445, 553, 905, 309, 449, 43, 660, 65, 742, 233, 694, 128, 432, 640, 352, 757 };
        int help_arr[] = new int[1000];
        MergeSort w = new MergeSort(arr, help_arr, 0, 999);

        Thread t = new Thread(w);

        t.start();
        try {
            t.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        for (int i = 0; i < 999; i++)
            System.out.printf("%d ", arr[i]);
        
        for (int i = 0; i < 998; i++)
             if (arr[i+1] < arr[i])
                 System.out.println("\nARRAY NOT SORTED!!!");


    }
}
