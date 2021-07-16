import math as m


def f(x):
    return 4*m.cos(x)*m.cos(x) - 3

def f_better(x):
    return m.cos(3*x)/m.cos(x)



for i in range(20):
    print(f((m.pi/6)+2**(-i)))

print("=========================")

for i in range(20):
    print(f_better((m.pi/6)+2**(-i)))


print("=========================")
print(f(m.pi/6))
print(f_better(m.pi/6))

print("=========================")
print(f(61*m.pi/6))
print(f_better(61*m.pi/6))
