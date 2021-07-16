
a = 3

xn = 0.001
#xn = 0.1
#xn = 0.12
#xn = 0.07
#xn = 2
#xn = 0.5
for i in range(1,22):
    xn = 0.5*xn*(3-a*xn*xn)

print(xn)