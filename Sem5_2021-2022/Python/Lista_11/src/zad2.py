from numbers import Number

# dokumentacja: pydoc -w zad2


def pierwiastek(n):
    """Oblicza podłogę z pierwiastka kwadratowego z n korzystając ze wzoru:
    1 + 3 + 5 + ... + 2*k - 1 = k^2
    """

    if not isinstance(n, Number):
        raise ValueError("Argument not a number")
    if n < 0:
        raise ValueError("Negative argument")

    ret = 0
    sum = 0

    while sum <= n:
        sum += (2*(ret+1) - 1)
        ret += 1
    ret -= 1

    return ret
