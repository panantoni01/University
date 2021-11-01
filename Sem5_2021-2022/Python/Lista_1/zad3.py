
def print_adjust(text : str, width : int):
    print(text.rjust(width), end = ' ')

def tabliczka(x1, x2, y1, y2):
    l = max(len(str(x1 * y1)), len(str(x1 * y2)), len(str(x2 * y1)), len(str(x2 * y2)))
    
    print_adjust('', l)
    for i in range(x1, x2 + 1):
        print_adjust(str(i), l)
    print()

    for i in range(y1, y2 + 1):
        print_adjust(str(i), l)
        for j in range(x1, x2 + 1):
            print_adjust(str(i * j), l)
        print()
    
    
# tabliczka(3, 5, 2, 4)
tabliczka(1, 10, 1, 10)
# tabliczka(-4, 3, -2, 5)