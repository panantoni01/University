def all_possible_combs(pattern: list, max_len: int) -> list:
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


for comb in all_possible_combs([2, 4, 1], 12):
    print(f"{comb}  {matches_pattern(comb, [2,4,1])}")
print(f"{[0,1,1,0,1,1,1,1,1,0,0,0]}  {matches_pattern([0,1,1,0,1,1,1,1,1,0,0,0], [2,4,1])}")
