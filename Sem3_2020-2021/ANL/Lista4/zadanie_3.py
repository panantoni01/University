import math as m
import numpy as n

def f(x):
    return x-0.49

def bisection(n,a0,b0,f):
    if n > 10:
        return
    m = (a0+b0)/2
    print(abs(0.49-m),f"= e_{n}",'<=',(1-0)/(2**(n)),sep=' ')
    if f(a0)*f(m) < 0:
        bisection(n+1,a0,m,f)
    else:
        bisection(n+1,m,b0,f)


bisection(1,0,1,f)