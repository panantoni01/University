import math as m

def zeros(a,b,c):
    sdelta = m.sqrt(b*b - 4*a*c)
    return (-b-sdelta)/(2*a), (-b+sdelta)/(2*a)


def zeros_better(a,b,c):
    x_tmp = b+m.sqrt(b*b-4*a*c)
    x_2 = -2*c/x_tmp
    
    sdelta = m.sqrt(b*b - 4*a*c)
    return (-b-sdelta)/(2*a),x_2


print(zeros(0.000001,100000,0.000001))
print(zeros_better(0.000001,100000,0.000001))

print(zeros(2**(-27),1<<18,2**(-27)))
print(zeros_better(2**(-27),1<<18,2**(-27)))