words = set()
with open("zad2_words.txt", "r", encoding="utf-8") as file:
    for line in file:
        words.add(line.rstrip())


def split_to_words(line: str) -> list:
    length = len(line)
    dp_sqsums = [0 for n in range(length)]
    dp_bestsplits = [[] for n in range(length)]

    for i in range(1, length+1):
        if line[:i] in words:
            dp_sqsums[i-1] = i**2
            dp_bestsplits[i-1] = [line[:i]]
        else:
            for j in range(1, i):
                if line[j:i] in words and dp_sqsums[j-1] + (i-j)**2 > dp_sqsums[i-1]:
                    dp_sqsums[i-1] = dp_sqsums[j-1] + (i-j)**2
                    dp_bestsplits[i-1] = dp_bestsplits[j-1].copy()
                    dp_bestsplits[i-1].append(line[j:i])

    return dp_bestsplits[length-1]


with open("zad2_input.txt", "r", encoding="utf-8") as infile:
    with open("zad2_output.txt", "w", encoding="utf-8") as outfile:
        for line in infile:
            wordlist = split_to_words(line.rstrip())
            wordlist.append('\n')
            print(wordlist)
            outfile.write(' '.join(wordlist))
