
def is_palindrom(text : str):
    text = ''.join(text.split()).lower()
    text = ''.join(filter(str.isalnum, text))
    
    return text == text[::-1]

print(is_palindrom("Kobyła ma MAŁY bok."))
print(is_palindrom("Eine güldne, gute Tugend: Lüge nie!"))
# print(is_palindrom("        \nK,a-  j{A\\k  "))