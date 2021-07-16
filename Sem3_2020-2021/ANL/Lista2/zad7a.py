import math

def func_a(x):
    res = x**3
    res -= math.sqrt((x**6)+2020)
    return res

def func_a_better(x):
    res = x**3 + math.sqrt((x**6)+2020)
    res = (1/res)*(-2020)
    return res

for i in range(25):
    print(func_a(1<<i))

print("==========================")
for i in range(25):
    print(func_a_better(1<<i))