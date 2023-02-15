
def B(i, j):
    return 'B_%d_%d' % (i, j)


def domains(bs, R, C):
    for r in range(R):
        result = []
        for c in range(C):
            result.append(B(r, c) + " in 0..1")
        writeln(', '.join(result) + ',')


def known_bs(triples):
    result = []
    for trip in triples:
        i, j, n = trip[0], trip[1], trip[2]
        result.append(B(i, j) + ' #= ' + str(n))
    writeln(', '.join(result) + ',')


def sum_cols(cols, R):
    for col in range(len(cols)):
        bs = [B(i, col) for i in range(R)]
        writeln('sum([' + ', '.join(bs) + '], #=, ' + str(cols[col]) + '),')


def sum_rows(rows, C):
    for row in range(len(rows)):
        bs = [B(row, i) for i in range(C)]
        writeln('sum([' + ', '.join(bs) + '], #=, ' + str(rows[row]) + '),')


def pattern_diag(R, C):
    for i in range(R-1):
        for j in range(C-1):
            writeln(B(i, j) + ' + ' + B(i+1, j+1) + ' #= 2 #<==> ' + B(i+1, j) + ' + ' + B(i, j+1) + ' #= 2,')


def pattern_three_col(R, C):
    for i in range(1, R-1):
        for j in range(C):
            writeln(B(i, j) + ' #= 1 #==> ' + B(i-1, j) + ' + ' + B(i+1, j) + ' #> 0,')


def pattern_three_row(R, C):
    for i in range(1, C-1):
        for j in range(R):
            writeln(B(j, i) + ' #= 1 #==> ' + B(j, i-1) + ' + ' + B(j, i+1) + ' #> 0,')


def storms(rows, cols, triples):
    writeln(':- use_module(library(clpfd)).')

    R = len(rows)
    C = len(cols)

    bs = [B(i, j) for i in range(R) for j in range(C)]

    writeln('solve([' + ', '.join(bs) + ']) :- ')

    domains(bs, R, C)
    known_bs(triples)
    sum_cols(cols, R)
    sum_rows(rows, C)

    pattern_diag(R, C)
    pattern_three_col(R, C)
    pattern_three_row(R, C)

    writeln('    labeling([ff], [' + ', '.join(bs) + ']).')
    writeln('')
    writeln(":- tell('prolog_result.txt'), solve(X), write(X), nl, told.")


def writeln(s):
    output.write(s + '\n')


txt = open('zad_input.txt').readlines()
output = open('zad_output.txt', 'w')

rows = list(map(int, txt[0].split()))
cols = list(map(int, txt[1].split()))
triples = []

for i in range(2, len(txt)):
    if txt[i].strip():
        triples.append(tuple(map(int, txt[i].split())))

storms(rows, cols, triples)
