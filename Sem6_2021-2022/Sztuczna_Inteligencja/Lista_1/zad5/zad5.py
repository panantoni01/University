from random import randint
import sys


def opt_dist(numbers: list, d: int) -> int:
    total_ones = numbers.count(1)
    if d == 0:
        return total_ones

    minimum = d + 1
    for pos in range(len(numbers) - d + 1):
        minimum = min(minimum, numbers[pos:pos+d].count(0) + numbers[:pos].count(1) + numbers[pos+d:].count(1))

    return minimum

# ===============================================================


def get_bad_rows(rows: list, row_blocks: list) -> list:
    # returns list of indices
    bad = []
    for i in range(len(rows)):
        if opt_dist(rows[i], row_blocks[i]) > 0:
            bad.append(i)
    return bad


def get_dist_sum(row: list, column: list, row_block: int, col_block: int) -> int:
    dist_row = opt_dist(row, row_block)
    dist_col = opt_dist(column, col_block)
    return dist_row + dist_col


def solve(rows: list, row_blocks: list, col_blocks: list) -> bool:
    bad_rows = get_bad_rows(rows, row_blocks)
    if not bad_rows:
        for j in range(len(rows[0])):
            column = [rows[k][j] for k in range(len(rows))]
            if opt_dist(column, col_blocks[j]) > 0:
                return False
        return True
    random_row_idx = bad_rows[randint(0, len(bad_rows) - 1)]
    random_row = rows[random_row_idx]

    (best_j, best_diff) = (0, 0)
    for j in range(len(random_row)):
        column = [rows[k][j] for k in range(len(rows))]
        old_dist = get_dist_sum(random_row, column, row_blocks[random_row_idx], col_blocks[j])
        random_row[j] ^= 1

        column = [rows[k][j] for k in range(len(rows))]
        dist = get_dist_sum(random_row, column, row_blocks[random_row_idx], col_blocks[j])
        random_row[j] ^= 1

        (best_j, best_dist_diff) = (j, old_dist - dist) if (old_dist - dist > best_diff) else (best_j, best_diff)

    rows[random_row_idx][best_j] ^= 1
    return False


with open("zad5_input.txt", "r") as input:
    with open("zad5_output.txt", "w") as output:
        first_line = input.readline().split()
        num_rows, num_cols = int(first_line[0]), int(first_line[1])
        rows = [[randint(0, 1) for i in range(num_cols)] for i in range(num_rows)]

        row_blocks = []
        col_blocks = []
        for i in range(num_rows):
            row_blocks.append(int(input.readline().split()[0]))
        for i in range(num_cols):
            col_blocks.append(int(input.readline().split()[0]))

        while True:
            for i in range(10000):
                if i % 8 == 0:
                    x = randint(0, num_rows - 1)
                    y = randint(0, num_cols - 1)
                    rows[x][y] ^= 1
                if solve(rows, row_blocks, col_blocks) is True:
                    for row in rows:
                        for bit in row:
                            char = '.' if bit == 0 else '#'
                            output.write(char)
                        output.write('\n')
                    sys.exit(0)
            rows = [[randint(0, 1) for i in range(num_cols)] for i in range(num_rows)]
