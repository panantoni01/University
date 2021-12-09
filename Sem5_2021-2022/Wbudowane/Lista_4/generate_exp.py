from math import exp
from math import e
from math import floor

def func(x):
    return (x/1023) * (x/1023) * (x/1023)

res = []
i = 0
cnt = 0
how_many = 64
while cnt < how_many:
    x = func(i)
    res.append(floor(x * 3096))
    i += 16
    cnt += 1

print(res[::-1])


res2 = []
sq = 3096**(1/64)
for i in range(65):
    res2.append(floor(sq**i))
print(res2)

