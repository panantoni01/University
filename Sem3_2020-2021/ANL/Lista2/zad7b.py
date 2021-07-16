import math

def func_b(x):
    res = math.cos(x)-1 + (x**2)/2
    res *= x**(-4)
    return res

def func_b_better(x):
    res = 1/24
    for i in range(4):
        if i%2 == 0 :
            res -= (x**(2*(i+1)))/math.factorial(2*(i+3))
        else:
            res += (x**(2*(i+1)))/math.factorial(2*(i+3))
    return res

for i in range(5,1,-1):
    print(func_b(i))
for i in range(20):
    print(func_b(10**(-i)))

print("==========================")
for i in range(5,1,-1):
    print(func_b_better(i))
for i in range(20):
    print(func_b_better(10**(-i)))