from random import randint
import sys

combs_dict = {}


def all_possible_combs(pattern: list, max_len: int) -> list:
    if (tuple(pattern), max_len) in combs_dict:
        return combs_dict[(tuple(pattern), max_len)]
    if not pattern:
        return [[0] * max_len]

    result = []
    curr_len = pattern[0]

    for i in range(max_len - (sum(pattern[1:]) + len(pattern[1:]) - 1 + curr_len)):
        for comb in all_possible_combs(pattern[1:], max_len - (i + curr_len + 1)):
            list_to_append = [0] * i + [1] * curr_len + [0] + comb
            if len(list_to_append) == max_len + 1:  # cases when '1' is the last element
                list_to_append = list_to_append[:-1]
            result.append(list_to_append)
    combs_dict[(tuple(pattern), max_len)] = result
    return result


def matches_pattern(numbers: list, pattern: list) -> bool:
    starts_of_1seq = []
    for i in range(len(numbers)):
        if numbers[i] == 1 and (i == 0 or numbers[i-1] == 0):
            starts_of_1seq.append(i)

    if len(starts_of_1seq) != len(pattern):
        return False

    pat_idx = 0
    for start in starts_of_1seq:
        i = start
        while i < len(numbers) and numbers[i] != 0:
            i += 1
        if i - start != pattern[pat_idx]:
            return False
        pat_idx += 1
    return True


def opt_dist(numbers: list, pattern: list) -> int:
    if matches_pattern(numbers, pattern):
        return 0

    min_diff = 0xFFFFFFFF
    for comb in all_possible_combs(pattern, len(numbers)):
        count_diff = 0
        for i in range(len(numbers)):
            if numbers[i] != comb[i]:
                count_diff += 1
        min_diff = min(min_diff, count_diff)

    return min_diff

# ===============================================================


def get_bad_rows(rows: list, row_blocks: list) -> list:  # returns list of indices
    bad = []
    for i in range(len(rows)):
        if opt_dist(rows[i], row_blocks[i]) > 0:
            bad.append(i)
    return bad


def get_dist_sum(row: list, column: list, row_block: list, col_block: list) -> int:
    dist_row = opt_dist(row, row_block)
    dist_col = opt_dist(column, col_block)
    return dist_row + dist_col


def solve(rows: list, cols: list, row_blocks: list, col_blocks: list) -> bool:
    bad_rows = get_bad_rows(rows, row_blocks)
    if not bad_rows:
        for j in range(len(rows[0])):
            column = cols[j]
            if opt_dist(column, col_blocks[j]) > 0:
                return False
        return True

    random_row_idx = bad_rows[randint(0, len(bad_rows) - 1)]
    random_row = rows[random_row_idx]

    (best_j, best_diff) = (0, 0)
    for j in range(len(random_row)):
        old_dist = get_dist_sum(random_row, cols[j], row_blocks[random_row_idx], col_blocks[j])
        random_row[j] ^= 1
        cols[j][random_row_idx] ^= 1

        dist = get_dist_sum(random_row, cols[j], row_blocks[random_row_idx], col_blocks[j])
        random_row[j] ^= 1
        cols[j][random_row_idx] ^= 1

        (best_j, best_dist_diff) = (j, old_dist - dist) if (old_dist - dist > best_diff) else (best_j, best_diff)

    rows[random_row_idx][best_j] ^= 1
    cols[best_j][random_row_idx] ^= 1
    return False


with open("zad_input.txt", "r") as input:
    with open("zad_output.txt", "w") as output:
        first_line = input.readline().split()
        num_rows, num_cols = int(first_line[0]), int(first_line[1])
        rows = [[randint(0, 1) for _ in range(num_cols)] for _ in range(num_rows)]
        cols = [[rows[i][j] for i in range(num_rows)] for j in range(num_cols)]

        row_blocks = []
        col_blocks = []
        for i in range(num_rows):
            curr_line = input.readline().split()
            row_blocks.append([int(num) for num in curr_line])
        for i in range(num_cols):
            curr_line = input.readline().split()
            col_blocks.append([int(num) for num in curr_line])

        while True:
            for i in range(10000):
                # if i % 1000 == 0:
                #     print("==============================")
                #     for row in rows:
                #         res = ''
                #         for num in row:
                #             res += '.' if num == 0 else '#'
                #         print(res)
                if i % 8 == 0:
                    x = randint(0, num_rows - 1)
                    y = randint(0, num_cols - 1)
                    rows[x][y] ^= 1
                    cols[y][x] ^= 1
                if solve(rows, cols, row_blocks, col_blocks) is True:
                    for row in rows:
                        for bit in row:
                            char = '.' if bit == 0 else '#'
                            output.write(char)
                        output.write('\n')
                    sys.exit(0)
            rows = [[randint(0, 1) for _ in range(num_cols)] for _ in range(num_rows)]
            cols = [[rows[i][j] for i in range(num_rows)] for j in range(num_cols)]
