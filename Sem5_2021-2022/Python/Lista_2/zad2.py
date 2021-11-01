
def pierwiastek(n):
    ret = 0
    sum = 0
    
    while sum <= n:
        sum += (2*(ret+1) - 1)
        ret += 1
    ret -= 1
    
    return ret


print(pierwiastek(1))
print(pierwiastek(3))
print(pierwiastek(4))

print(pierwiastek(120))
print(pierwiastek(121))
print(pierwiastek(122))