
# dokumentacja: pydoc -w zad5
def kompresja(tekst):
    """Dokonuje prostej kompresji tekstu, zastępując ciąg identycznych znaków parą (znak, liczność).
    Przykłady:
    >>> kompresja('suuuuper')
    'su4per'

    >>> kompresja('hellooo!!!')
    'hello3!3'
    """
    if type(tekst) != str:
        raise ValueError("Argument not a string")

    result = ""
    counter = 1
    prev_char = '\0'

    for char in tekst:
        if char == prev_char:
            counter += 1
        else:
            result += prev_char + \
                str(counter) if counter > 2 else prev_char * counter
            prev_char = char
            counter = 1
    result += prev_char + str(counter) if counter > 2 else prev_char * counter

    return result[1:]


def dekompresja(tekst):
    """Dokonuje dekompresji tekstu, wcześniej skompresowanego funkcją kompresja(). Przykład:
    >>> dekompresja('su4per')
    suuuuper
    """

    if type(tekst) != str:
        raise ValueError("Argument not a string")

    result = ""
    n = 0

    for char in tekst:
        if str.isdigit(char):
            n = n * 10 + int(char)
        else:
            result += result[-1:] * (n - 1)
            n = 0
            result += char

    if n > 0:
        result += result[-1:] * (n - 1)
    return result


if __name__ == "__main__":
    print(kompresja("heeeeelloooooo!!!"))
