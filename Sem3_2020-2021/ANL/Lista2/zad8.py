import math

def f(x):
    x11 = x**11
    return 4040*(math.sqrt(x11+1)-1)/x11

def f_better(x):
    result = math.pow(x,11)+1
    result = math.sqrt(result)+1
    result = (1/result) * 4040
    return result

# =====================================

for i in range(13):
    print(f(10**(-i)))

print("================")

for i in range(13):
    print(f_better(10**(-i)))