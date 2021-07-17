# Antoni Pokusiński
# 314942

import math as m

# funkcja gęstości chi^2
def chi_dens(k, x): # k - stopnie swobody; x - argument
    if (m.floor(k) != k or k <= 0):
        raise ValueError('Invalid k argument')
    if (x < 0):
        raise ValueError('Invalid x argument')

    const = 2**(k/2) * m.gamma(k/2)
    rest = x**(k/2 - 1) * m.exp(-x/2)
    return rest / const


def Trapezoid_Integral(k, t, m): # k - stopnie swobody; t - argument; m - dokładność
    # a, b - końce przedziału całkowania
    a = 0
    b = t

    # h - wysokość każdego trapezu
    h = (b-a)/m
    # pierwszy i ostatni bok (bok <=> wartość funkcji) zostaną policzone tylko raz...
    result = 0.5 * chi_dens(k, a)
    result += 0.5 * chi_dens(k, b)
    # ...a reszta boków zostaje policzona dwukrotnie
    for i in range(1, m):
        result += chi_dens(k, a + i*h)
    result *= h

    return result



def Romberg_Integral(k, t, m): # k - stopnie swobody; t - argument; m - dokładność
    # a, b - końce przedziału całkowania
    a = 0
    b = t

    romberg_arr = [0 for i in range(m)]

    # wypełniamy zerową kolumnę
    romberg_arr[0] = (chi_dens(k, a) + chi_dens(k, b))*(b - a)/2
    for i in range(1,m):
        # najpierw dodajemy 1/2 * T_0(i-1):
        romberg_arr[i] = 0.5 * romberg_arr[i-1]
        # dodajemy 1/2 * M_n(f):
        h_n = (b-a)/2**(i-1)
        suma = 0
        for j in range(1, 2**(i-1)+1):
            suma += chi_dens(k, a + 0.5 * (2*j - 1) * h_n)
        M  = h_n * suma
        
        romberg_arr[i] += 0.5 * M
    

    # wypełniamy kolejne kolumny, zauważając, że możemy działać
    # na 1-wymiarowej tablicy
    for i in range(1, m):
        for j in range(m-1, i-1, -1):
            romberg_arr[j] = (4**i * romberg_arr[j] - romberg_arr[j-1])/(4**i - 1)
        

    return romberg_arr[m-1]



print('Trapezoid method: ' + str(Trapezoid_Integral(4, 2, 2**12)))
print('Romberg method: ' + str(Romberg_Integral(4, 2, 12))) 