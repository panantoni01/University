from random import randint

words = set()
with open("zad2_words.txt", "r", encoding="utf-8") as file:
    for line in file:
        words.add(line.rstrip())


def split_to_words(line: str) -> list:
    length = len(line)
    dp_splits = [[] for n in range(length)]

    for i in range(1, length+1):
        candidates = []
        for j in range(0, i):
            subword = line[j:i]
            if subword in words and sum(len(word) for word in dp_splits[j-1]) == j:
                candidates.append(subword)
        if candidates:
            random_cand = candidates[randint(0, len(candidates) - 1)]
            random_cand_len = len(random_cand)
            dp_splits[i-1] = dp_splits[i-1 - random_cand_len].copy()
            dp_splits[i-1].append(random_cand)

    return dp_splits[length-1]


with open("tadeusz_processed.txt", "r", encoding="utf-8") as infile:
    with open("randomchoice_output.txt", "w", encoding="utf-8") as outfile:
        i = 0
        for line in infile:
            wordlist = split_to_words(line.rstrip())
            print(wordlist)
            outfile.write(' '.join(wordlist))
            outfile.write('\n')
            i += 1
            if i >= 1:
                break
