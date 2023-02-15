from queue import Queue

ROW, COL = 0, 1
MAXINT = 1 << 63


class Nonogram:
    @staticmethod
    def all_possible_combs(pattern: list, max_len: int) -> list:
        if not pattern:
            return [[0] * max_len]

        result = []
        curr_len = pattern[0]

        for i in range(max_len - (sum(pattern[1:]) + len(pattern[1:]) - 1 + curr_len)):
            for comb in Nonogram.all_possible_combs(pattern[1:], max_len - (i + curr_len + 1)):
                list_to_append = [0] * i + [1] * curr_len + [0] + comb
                if len(list_to_append) == max_len + 1:  # cases when '1' is the last element
                    list_to_append = list_to_append[:-1]
                result.append(list_to_append)
        return result

    def __init__(self, first_line: list, row_descrs: list, col_descrs: list):
        self.num_rows, self.num_cols = int(first_line[0]), int(first_line[1])
        self.rows = [[-1 for _ in range(self.num_cols)] for _ in range(self.num_rows)]
        self.cols = [[-1 for _ in range(self.num_rows)] for _ in range(self.num_cols)]

        self.row_descrs = row_descrs
        self.col_descrs = col_descrs
        self.row_combs = [Nonogram.all_possible_combs(row_descrs[i], self.num_cols) for i in range(self.num_rows)]
        self.col_combs = [Nonogram.all_possible_combs(col_descrs[i], self.num_rows) for i in range(self.num_cols)]

    def __str__(self) -> str:
        ret = ""
        for row in self.rows:
            for num in row:
                if num == -1:
                    ret += '?'
                elif num == 0:
                    ret += '.'
                elif num == 1:
                    ret += '#'
            ret += '\n'
        return ret

    def copy(self):
        newimg = Nonogram([-1, -1], [], [])
        newimg.num_cols = self.num_cols
        newimg.num_rows = self.num_rows
        newimg.rows = self.rows.copy()
        newimg.cols = self.cols.copy()
        newimg.row_descrs = self.row_descrs
        newimg.col_descrs = self.col_descrs
        newimg.row_combs = self.row_combs.copy()
        newimg.col_combs = self.col_combs.copy()
        return newimg

    def revise(self, curr_var: list, curr_combs: list) -> bool:
        ret = False
        to_delete = []
        for comb in curr_combs:
            for j in range(len(curr_var)):
                if curr_var[j] == -1:  # -1 <=> still unknown
                    continue
                if comb[j] != curr_var[j]:
                    if comb not in to_delete:
                        to_delete.append(comb.copy())
                        ret = True
        for comb in to_delete:
            curr_combs.remove(comb)
        return ret

    def find_mcf(self, COLROW: int) -> int:
        combs = self.col_combs if COLROW == COL else self.row_combs
        minlen, minidx = MAXINT, -1

        for i in range(len(combs)):
            if len(combs[i]) < minlen and len(combs[i]) > 1:
                minlen = len(combs[i])
                minidx = i
        return (minlen, minidx)

    def ac3_solve(self) -> None:
        worklist = Queue()
        for i in range(self.num_rows):
            worklist.put((ROW, i))
        for i in range(self.num_cols):
            worklist.put((COL, i))

        while not worklist.empty():
            (X, i) = worklist.get()
            curr_var = self.rows[i] if X == ROW else self.cols[i]
            curr_combs = self.row_combs[i] if X == ROW else self.col_combs[i]

            self.revise(curr_var, curr_combs)

            for j in range(len(curr_var)):
                if curr_var[j] != -1:
                    continue
                combs_js = [comb[j] for comb in curr_combs]
                if all(combs_js[k] == combs_js[0] for k in range(len(combs_js))):
                    curr_var[j] = combs_js[0]
                    adj_var = self.cols[j] if X == ROW else self.rows[j]
                    adj_var[i] = combs_js[0]
                    worklist.put((COL if X == ROW else ROW, j))

    def inference(self, COLROW: int, idx: int) -> bool:
        revised = False
        worklist = Queue()
        for i in range(self.num_rows if COLROW == ROW else self.num_cols):
            worklist.put((int(not COLROW), i))

        while not worklist.empty():
            (X, i) = worklist.get()
            curr_var = self.rows[i] if X == ROW else self.cols[i]
            curr_combs = self.row_combs[i] if X == ROW else self.col_combs[i]

            revised = self.revise(curr_var, curr_combs) or revised

            if not curr_combs:
                return False

            for j in range(len(curr_var)):
                if curr_var[j] != -1:
                    continue
                combs_js = [comb[j] for comb in curr_combs]
                if all(combs_js[k] == combs_js[0] for k in range(len(combs_js))):
                    curr_var[j] = combs_js[0]
                    adj_var = self.cols[j] if X == ROW else self.rows[j]
                    adj_var[i] = combs_js[0]
                    worklist.put((COL if X == ROW else ROW, j))
        return revised

    def backtrack(self) -> int:
        (minrowlen, minrow) = self.find_mcf(ROW)
        (mincollen, mincol) = self.find_mcf(COL)
        if mincol == -1 and minrow == -1:
            return 0

        COLROW = ROW if minrowlen < mincollen else COL
        minidx = minrow if COLROW == ROW else mincol
        combs = self.row_combs[minidx] if COLROW == ROW else self.col_combs[minidx]

        for comb in combs:
            newimg = self.copy()
            curr_var = newimg.rows[minidx] if COLROW == ROW else newimg.cols[minidx]

            if COLROW == ROW:
                newimg.rows[minidx] = comb.copy()
            else:
                newimg.cols[minidx] = comb.copy()
            for i in range(len(curr_var)):
                adj_var = newimg.cols[i] if COLROW == ROW else newimg.rows[i]
                adj_var[minidx] = curr_var[i]

            if COLROW == ROW:
                newimg.row_combs[minidx] = [comb.copy()]
            else:
                newimg.col_combs[minidx] = [comb.copy()]

            if newimg.inference(COLROW, minidx):
                res = newimg.backtrack()
                if res == 0:
                    return 0
        return -1


with open("zad_input.txt", "r") as input:
    with open("zad_output.txt", "w") as output:
        first_line = input.readline().split()
        row_descrs = []
        col_descrs = []
        for i in range(int(first_line[0])):
            row_descrs.append([int(num) for num in input.readline().split()])
        for i in range(int(first_line[1])):
            col_descrs.append([int(num) for num in input.readline().split()])

        image = Nonogram(first_line, row_descrs, col_descrs)
        print(' '.join([str(len(lst)) for lst in image.row_combs]))
        print(' '.join([str(len(lst)) for lst in image.col_combs]))
        print("==================================================")
        image.ac3_solve()
        print(' '.join([str(len(lst)) for lst in image.row_combs]))
        print(' '.join([str(len(lst)) for lst in image.col_combs]))
        print("==================================================")
        image.backtrack()
        print(' '.join([str(len(lst)) for lst in image.row_combs]))
        print(' '.join([str(len(lst)) for lst in image.col_combs]))
        string = image.__str__()
        output.write(string)
