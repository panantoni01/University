def ile_iter():
    i = 0
    wynik = 0.0
    while abs(4 * wynik - math.pi) > 1e-4:
        wynik += ((-1) ** i) / (2*i + 1)
        i += 1
    print(4 * wynik)
    return i


if __name__=='__main__':
    dokl = 20000
    pi = 0
    for i in range(dokl):
        if i%2 == 0:
            pi += 1/(2*i+1)
        else:
            pi -= 1/(2*i+1)
    pi *= 4
    print(pi)
    