import math as m 

def sqrt_from_half_to_2(m):
    xn = 1.0
    for i in range(1,20):
        xn = 0.5*(xn + m/xn)
    return xn

print("Testy:\n")
print(sqrt_from_half_to_2(0.5))
print(sqrt_from_half_to_2(1.25))
print(sqrt_from_half_to_2(1.975))
print("=======================================")

def sqrt_a(m,c):
    if c % 2 == 1:
        return sqrt_from_half_to_2(2*m)*(2**((c-1)/2))
    else:
        return sqrt_from_half_to_2(m)*(2**(c/2))

print(sqrt_a(0.75,10)) # 0.75*2^10 = 768 ; sqrt(768) = 27,712812921
print(sqrt_a(0.6,79)) # możemy obliczać także bardzo duże liczby