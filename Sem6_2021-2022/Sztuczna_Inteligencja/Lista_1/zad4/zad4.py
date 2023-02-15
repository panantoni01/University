
def opt_dist(numbers: list, d: int) -> int:
    total_ones = numbers.count(1)
    if d == 0:
        return total_ones

    minimum = d + 1
    for pos in range(len(numbers) - d + 1):
        minimum = min(minimum, numbers[pos:pos+d].count(0) + numbers[:pos].count(1) + numbers[pos+d:].count(1))

    return minimum


with open("zad4_input.txt", "r") as input:
    with open("zad4_output.txt", "w") as output:
        for line in input:
            in_list = line.split()
            (numbers, d) = ([int(char) for char in in_list[0]], int(in_list[1]))
            output.write(str(opt_dist(numbers, d)) + '\n')
