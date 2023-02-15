def V(i, j):
    return 'V%d_%d' % (i, j)


def domains(Vs):
    return [q + ' in 1..9' for q in Vs]


def all_different(Qs):
    return 'all_distinct([' + ', '.join(Qs) + '])'


def get_column(j):
    return [V(i, j) for i in range(9)]


def get_raw(i):
    return [V(i, j) for j in range(9)]


def horizontal():
    return [all_different(get_raw(i)) for i in range(9)]


def vertical():
    return [all_different(get_column(j)) for j in range(9)]


def square3x3(i: int, j: int):
    square = [V(i, j),   V(i, j+1),   V(i, j+2),
              V(i+1, j), V(i+1, j+1), V(i+1, j+2),
              V(i+2, j), V(i+2, j+1), V(i+2, j+2)]
    return all_different(square)


def print_constraints(Cs, indent, d):
    position = indent
    print(indent * ' ', end='', file=output)
    for c in Cs:
        print(c + ',', end=' ', file=output)
        position += len(c)
        if position > d:
            position = indent
            print("", file=output)
            print(indent * ' ', end='', file=output)


def sudoku(assigments):
    variables = [V(i, j) for i in range(9) for j in range(9)]

    print(':- use_module(library(clpfd)).', file=output)
    print('solve([' + ', '.join(variables) + ']) :- ', file=output)

    cs = domains(variables) + vertical() + horizontal()  # sudoku rules: Vars ins {1..9}, horiz, vert... and 3x3!

    squares = []
    for i in range(0, 9, 3):
        for j in range(0, 9, 3):
            squares.append(square3x3(i, j))
    cs += squares

    for i, j, val in assigments:
        cs.append('%s #= %d' % (V(i, j), val))

    print_constraints(cs, 4, 70),
    print("", file=output)
    print('    labeling([ff], [' + ', '.join(variables) + ']).', file=output)
    print("", file=output)
    print(':- solve(X), write(X), nl.', file=output)


if __name__ == "__main__":
    raw = 0
    triples = []

    output = open('zad_output.txt', 'w')
    with open('zad_input.txt', 'r') as input:
        for x in input:
            x = x.strip()
            if len(x) == 9:
                for i in range(9):
                    if x[i] != '.':
                        triples.append((raw, i, int(x[i])))
                raw += 1
        sudoku(triples)
    output.close()

"""
89.356.1.
3...1.49.
....2985.
9.7.6432.
.........
.6389.1.4
.3298....
.78.4....
.5.637.48

53..7....
6..195...
.98....6.
8...6...3
4..8.3..1
7...2...6
.6....28.
...419..5
....8..79

3.......1
4..386...
.....1.4.
6.924..3.
..3......
......719
........6
2.7...3..
"""
