import timeit
from math import ceil, sqrt


def pierwsze_imperatywna(n):
    result = []
    for i in range(2, n+1):
        # j = 2
        # while j <= sqrt(i):
        for j in range(2, ceil(sqrt(i)) + 1): # szybsze niż while !
            if i%j == 0:
                break
            j += 1
        if j > sqrt(i):
            result.append(i)
    return result


def pierwsze_skladana(n):
    return [i for i in range(2, n+1) if i == 2 or all(i%j != 0 for j in range(2, ceil(sqrt(i)) + 1))]


def pierwsze_funkcyjna(n):
   return list(filter(lambda i: i == 2 or all(i%j != 0 for j in range(2, ceil(sqrt(i)) + 1)), range(2, n + 1)))


######################################
n1 = 100
print(f"Przykład dla {n1}:")
print(pierwsze_imperatywna(n1))
print(pierwsze_skladana(n1))
print(pierwsze_funkcyjna(n1))

n2 = 100000
print("Czas imp.: " + str(timeit.timeit(setup = 'from __main__ import pierwsze_imperatywna', stmt = f'pierwsze_imperatywna({n2})', number = 1)))
print("Czas skl.: " + str(timeit.timeit(setup = 'from __main__ import pierwsze_skladana', stmt = f'pierwsze_skladana({n2})', number = 1)))
print("Czas fun.: " + str(timeit.timeit(setup = 'from __main__ import pierwsze_funkcyjna', stmt = f'pierwsze_funkcyjna({n2})', number = 1)))
