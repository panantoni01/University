import math
import numpy as np

def f(x):
    x11 = math.pow(x,11)
    print(x11)
    result = math.sqrt(x11+1)-1
    print(result)
    result /= x11
    result *= 4040

    return result

if __name__ == '__main__':
    print(f(0.001))
    