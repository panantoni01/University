import math

def func_c(x):
    return math.log(x,5)-6

def func_c_better(x):
    #const = 1/math.log(5)
    #return const*math.log(x/(5**6))
    return math.log(x/(5**6),5)

for i in range(20):
    print(func_c(5**6+10**(-i)))
print(func_c(5**6))

print("=============================")

for i in range(20):
    print(func_c_better(5**6+10**(-i)))
print(func_c_better(5**6))