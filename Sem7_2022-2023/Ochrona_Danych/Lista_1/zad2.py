alphabet = 'AĄBCĆDEĘFGHIJKLŁMNŃOÓPQRSŚTUVWXYZŻŹ'
alphalen = len(alphabet)

num2char = dict(enumerate(alphabet))
char2num = { num2char[n]:n for n in num2char }

ciphertext = 'MRŚIŃSHBCŁUJCŃLZIIESRQNDIWJWZGMJFJSWZDŃOEZJALTŁBSFIIACXIĆIPAŻTÓROBŚPÓKAANŻMŁZEDŹTŁKWDAFMŻUHBZHWSXTTLIGSHMYMZWIŃZFYXACXABŁĄXCYWYAOJDSŃHBMJESLZŚFNUEVNYPFCXIŁZIĆŻFBVIYJIWABEPRŻĄWBEOJGARHPSÓCUMAOĘWIEFUOHACSRLÓŹŃŻKFZNM'
plaintext  = 'PODMUROWANY'

# c - litera ciphertext'u
# k - litera klucza
def decodeChar(c, k):
    return num2char[(char2num[c] + alphalen - char2num[k]) % alphalen]

def decodeVigenere(ciphertext, key):
    ptext = [decodeChar(ciphertext[i], key[i % len(key)]) for i in range(len(ciphertext))]
    return ''.join(ptext)

for i in range(len(ciphertext) - len(plaintext) + 1):
    sub_ciphertext = ciphertext[i:(i+len(plaintext))]
    print(decodeVigenere(sub_ciphertext, plaintext))

print(decodeVigenere(ciphertext, "TADEUSZ"))