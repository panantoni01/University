import math as m

def f(x):
    return x*x - 2*m.cos(3*x+1)

def bisection(a,b,f,eps):
    m = (a+b)/2
    if abs(f(m)) < eps :
        return m
    elif f(a)*f(m) < 0:
        return bisection(a,m,f,eps)
    else:
        return bisection(m,b,f,eps)



print("MIEJSCA ZEROWE:\n")
print(bisection(0,0.5,f,10**(-5)))
print(bisection(-1,-0.5,f,10**(-5)))
print("====================================")
print("Sprawdzenie:\n")
print(f(bisection(0,0.5,f,10**(-5))))
print(f(bisection(-1,0,f,10**(-5))))