import timeit
from math import floor, sqrt
from functools import reduce    

def doskonale_imperatywna(n):
    result = []
    for i in range(6, n+1): # 6 - najmniejsza liczba doskonała
        sum = 0
        for j in range(1, floor(sqrt(i)) + 1):
            if i%j == 0:
                sum += j
                if j*j != i:
                    sum += i//j
        if sum == 2*i:
            result.append(i)
    return result


def doskonale_skladana(n):
    return [i for i in range(6, n+1) if sum([j + (i//j if j*j != i else 0) for j in range(1, floor(sqrt(i)) + 1) if i%j == 0]) == 2*i]


def doskonale_funkcyjna(n):
    return list(filter(lambda i: reduce(lambda a, b: a + b + (i//b if b*b != i else 0) if i%b == 0 else a, range(1, floor(sqrt(i)) + 1), 0) == 2*i, range(6, n+1)))

######################################

n1 = 496
print(f"Przykład dla {n1}:")
print(doskonale_imperatywna(n1))
print(doskonale_skladana(n1))
print(doskonale_funkcyjna(n1))

n2 = 100000
print("Czas imp.: " + str(timeit.timeit(setup = 'from __main__ import doskonale_imperatywna', stmt = f'doskonale_imperatywna({n2})', number = 1)))
print("Czas skl.: " + str(timeit.timeit(setup = 'from __main__ import doskonale_skladana', stmt = f'doskonale_skladana({n2})', number = 1)))
print("Czas skl.: " + str(timeit.timeit(setup = 'from __main__ import doskonale_funkcyjna', stmt = f'doskonale_funkcyjna({n2})', number = 1)))

# i = 24
# reduce(lambda a, b: a + b + (i//b if b*b != i else 0) if i%b == 0 else a, range(0, floor(sqrt(i)) + 1))