words = set()
with open("words.txt", "r", encoding="utf-8") as file:
    for line in file:
        words.add(line.rstrip())


def sum_squares(words: list) -> int:
    return sum([len(word)*len(word) for word in words])


def split_to_words(line: str, accum_list: list, accum_sqsum: list, max_list: list, max_sqsum: list):
    if line == "":
        if not max_list or max_sqsum[0] < accum_sqsum[0]:
            max_list[:] = accum_list.copy()
            max_sqsum[0] = accum_sqsum[0]
        return
    length = len(line)
    for i in range(1, length+1):
        if line[:i] in words:
            if accum_sqsum[0] + i**2 + (length-i)**2 > max_sqsum[0]:
                accum_list.append(line[:i])
                accum_sqsum[0] += i**2
                split_to_words(line[i:], accum_list, accum_sqsum, max_list, max_sqsum)
                accum_list.pop()
                accum_sqsum[0] -= i**2


with open("zad2_input.txt", "r", encoding="utf-8") as infile:
    for line in infile:
        result = []
        split_to_words(line.rstrip(), [], [0], result, [0])
        print(result)
