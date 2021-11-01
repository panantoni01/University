
def kompresja(tekst): 
    result = "" 
    counter = 1
    prev_char = '\0'
    
    for char in tekst:
        if char == prev_char:
            counter += 1
        else:
            result += prev_char + str(counter) if counter > 2 else prev_char * counter
            prev_char = char
            counter = 1
    result += prev_char + str(counter) if counter > 2 else prev_char * counter

    return result


def dekompresja(tekst):
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


print(kompresja("helllooooooooooooo!!!"))
print(dekompresja(kompresja("helllooooooooooooo!!!")))

print(kompresja('suuuuuper'))
print(dekompresja(kompresja('suuuuuper')))
         
# źródło: https://en.wikipedia.org/wiki/Lorem_ipsum
# tekst = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
# print(kompresja(tekst))
# print(dekompresja(kompresja(tekst)))