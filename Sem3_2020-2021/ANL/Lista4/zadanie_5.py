import math as m 

R = 17
R = 7

xn = 0.0001
xn = 0.1

xn = 0.2


for i in range(1,10):
    xn = xn*(2-R*xn)

print(xn)