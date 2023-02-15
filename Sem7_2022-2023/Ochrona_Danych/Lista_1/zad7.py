ciphertext = 'KMFXLZMKDZVOXLZPXKYIPBKRRZFSVYDSVVFKMFXLZXLIYFAKYXVOXLZSKXZYPQZBKDZSVYDSVVFKMFDKMCDZMFIZFVOXLZSKXZYPQZBKNPZXLZCSZYZDKFZQIXXZY'
alphabet = '*ABCDEFGHIJKLMNOPQRSTUVWXYZ'

decrypted = dict(zip(alphabet, ['_' for _ in range(len(alphabet))]))

letter_freq = dict(zip(alphabet, [0 for _ in range(len(alphabet))]))
digram_freq = dict()
for letter in ciphertext:
    letter_freq[letter] += 1
for i in range(len(ciphertext) - 1):
    if ciphertext[i:i+2] in digram_freq.keys():
        digram_freq[ciphertext[i:i+2]] += 1
    else:
        digram_freq[ciphertext[i:i+2]] = 1

def decrypt_ciphertext(ciphertext: str, decrypted: dict):
    ptext = ""
    for letter in ciphertext:
        ptext += decrypted[letter]
    return ptext

print(dict(sorted(letter_freq.items(), key=lambda item: item[1])))
print(dict(sorted(digram_freq.items(), key=lambda item: item[1])))

decrypted['Z'] = 'E'
decrypted['X'] = 'T'
decrypted['L'] = 'H'

decrypted['S'] = 'W'
decrypted['K'] = 'A'
decrypted['Y'] = 'R'
decrypted['P'] = 'S'

# THETHIRDPARTOFTHEWATERS
# XLZXLIYFAKYXVOXLZSKXZYP
decrypted['I'] = 'I'
decrypted['F'] = 'D'
decrypted['A'] = 'P'
decrypted['V'] = 'O'
decrypted['O'] = 'F'

# ANDTHENAMEOFTHESTARISCALLED
# KMFXLZMKDZVOXLZPXKYIPBKRRZF
decrypted['M'] = 'N'
decrypted['D'] = 'M'
decrypted['B'] = 'C'
decrypted['R'] = 'L'

# BECAME    BECAUSETHEY
# QZBKDZ    QZBKNPZXLZC
decrypted['Q'] = 'B'
decrypted['C'] = 'Y'
decrypted['N'] = 'U'
print(decrypt_ciphertext(ciphertext, decrypted))