alphabet = 'AĄBCĆDEĘFGHIJKLŁMNŃOÓPQRSŚTUVWXYZŻŹ'
alphalen = len(alphabet)

num2char = dict(enumerate(alphabet))
char2num = { num2char[n]:n for n in num2char }

ciphertext = 'ĄIOGLĘZIRYŹRAWJLYRJTODŁASTR'

# c - litera ciphertext'u
# k - litera klucza
def decodeChar(c, k):
    return num2char[(char2num[c] + alphalen - char2num[k]) % alphalen]

def decodeCeasar(ciphertext, key):
    ptext = [decodeChar(ciphertext[i], key) for i in range(len(ciphertext))]
    return ''.join(ptext)

# for l in alphabet:
#     ptext = decodeCeasar(ciphertext, l)
#     print(f'{l}: {ptext}')

# ===========================================

ciphertext = 'YBCCQWĘĆÓXFTFBYYOĆRNĘPUZSPNJQXŹĘMFOYŹUZAOŹŻLABLDŃXTLUDFŹOFOĘBLŻŻĄBGUEHYXWVONOXUCĘPUDIKĘMLONRFVOLSXKQJVGVŻFLGVQJ'
plaintext  = 'WLIPCU'
key = ''

for i in range(len(plaintext)):
    key += decodeChar(ciphertext[i], plaintext[i])
print(key) # key == BRUNO ???

def decodeVigenere(ciphertext, key):
    ptext = [decodeChar(ciphertext[i], key[i % len(key)]) for i in range(len(ciphertext))]
    return ''.join(ptext)

print(decodeVigenere(ciphertext, "BRUNO"))


