import math as m

def f1(x):
    return 2021*x**5 + 2020*x**4 + 2019*x**2

def f2(x):
    return 1/(1 + 25*(x**2))

def f3(x):
    return m.sin(7*x - 2)/x



# a, b - końce przedziału
# f - funkcja podcałkowa
# m - liczba, dla której policzymy T_m0

def Romberg_integral(a,b,f, m):
    romberg_arr = [0 for i in range(m)]
    
    # wypełniamy zerową kolumnę
    romberg_arr[0] = (f(a) + f(b))*(b - a)/2
    for i in range(1,m):
        # najpierw dodajemy 1/2 * T_0(i-1):
        romberg_arr[i] = 0.5 * romberg_arr[i-1]
        # dodajemy M_n(f):
        h_n = (b-a)/2**(i-1)
        suma = 0
        for j in range(1, 2**(i-1)+1):
            suma += f(a + 0.5 * (2*j - 1) * h_n)
        M  = h_n * suma
        
        romberg_arr[i] += 0.5 * M

        
    # wypełniamy kolejne kolumny, zauważając, że możemy działać
    # na 1-wymiarowej tablicy
    for i in range(1, m):
        for j in range(m-1, i-1, -1):
            romberg_arr[j] = (4**i * romberg_arr[j] - romberg_arr[j-1])/(4**i - 1)

    return romberg_arr[m-1]


print(Romberg_integral(-1, 2, f1, 16))
print(Romberg_integral(-2, 2, f2, 16))
print(Romberg_integral(2, 3*m.pi, f3, 16))
    