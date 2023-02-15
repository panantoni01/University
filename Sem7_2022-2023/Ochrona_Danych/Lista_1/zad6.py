alphabet = '*ABCDEFGHIJKLMNOPQRSTUVWXYZ'

ciphertext = 'VYKDYJCYVVYKDVZQVBFVZDEPDFVBYCMZDVZDJVBFCYKODJBCVZDWBCAVYFPSSDJVZDFOBCIFQCAQJJYM\
FYSYPVJQIDYPFSYJVPCDYJVYVQRDQJWFQIQBCFVQFDQYSVJYPKODFQCAKLYNNYFBCIDCAVZDWVYABDVY\
FODDNCYWYJDQCAKLQFODDNVYFQLMDDCAVZDZDQJVQTZDQCAVZDVZYPFQCACQVPJQOFZYTRFVZQVSODFZ\
BFZDBJVYVBFQTYCFPWWQVBYCADXYPVOLVYKDMBFZAVYABDVYFODDNVYFODDNNDJTZQCTDVYAJDQWQLVZ\
DJDFVZDJPKSYJBCVZQVFODDNYSADQVZMZQVAJDQWFWQLTYWDMZDCMDZQXDFZPSSODAYSSVZBFWYJVQOT\
YBOWPFVIBXDPFNQPFDVZDJDFVZDJDFNDTVVZQVWQRDFTQOQWBVLYSFYOYCIOBSDSYJMZYMYPOAKDQJVZ\
DMZBNFQCAFTYJCFYSVBWDVZDYNNJDFFYJFMJYCIVZDNJYPAWQCFTYCVPWDOLVZDNQCIFYSADFNBFDAOY\
XDVZDOQMFADOQLVZDBCFYODCTDYSYSSBTDQCAVZDFNPJCFVZQVNQVBDCVWDJBVYSVZDPCMYJVZLVQRDF\
MZDCZDZBWFDOSWBIZVZBFEPBDVPFWQRDMBVZQKQJDKYARBCMZYMYPOASQJADOFKDQJVYIJPCVQCAFMDQ\
VPCADJQMDQJLOBSDKPVVZQVVZDAJDQAYSFYWDVZBCIQSVDJADQVZVZDPCABFTYXDJATYPCVJLSJYWMZY\
FDKYPJCCYVJQXDOODJJDVPJCFNPHHODFVZDMBOOQCAWQRDFPFJQVZDJKDQJVZYFDBOOFMDZQXDVZQCSO\
LVYYVZDJFVZQVMDRCYMCYVYSVZPFTYCFTBDCTDAYDFWQRDTYMQJAFYSPFQOOQCAVZPFVZDCQVBXDZPDY\
SJDFYOPVBYCBFFBTROBDAYDJMBVZVZDNQODTQFVYSVZYPIZVQCADCVDJNJBFDFYSIJDQVNBVZQCAWYWD\
CVMBVZVZBFJDIQJAVZDBJTPJJDCVFVPJCQMJLQCAOYFDVZDCQWDYSQTVBYCFYSVLYPCYMVZDSQBJYNZD\
OBQCLWNZBCVZLYJBFYCFKDQOOWLFBCFJDWDWKDJA'

decrypted = dict(zip(alphabet, ['_' for _ in range(len(alphabet))]))

letter_freq = dict(zip(alphabet, [0 for _ in range(len(alphabet))]))
digram_freq = dict()
trigram_freq = dict()
for letter in ciphertext:
    letter_freq[letter] += 1
for i in range(len(ciphertext) - 1):
    if ciphertext[i:i+2] in digram_freq.keys():
        digram_freq[ciphertext[i:i+2]] += 1
    else:
        digram_freq[ciphertext[i:i+2]] = 1
for i in range(len(ciphertext) - 2):
    if ciphertext[i:i+3] in trigram_freq.keys():
        trigram_freq[ciphertext[i:i+3]] += 1
    else:
        trigram_freq[ciphertext[i:i+3]] = 1

def decrypt_ciphertext(ciphertext: str, decrypted: dict):
    ptext = ""
    for letter in ciphertext:
        ptext += decrypted[letter]
    return ptext

print(dict(sorted(letter_freq.items(), key=lambda item: item[1])))
print(dict(sorted(digram_freq.items(), key=lambda item: item[1])))
print(dict(sorted(trigram_freq.items(), key=lambda item: item[1])))
decrypted['V'] = 'T'
decrypted['Z'] = 'H'
decrypted['D'] = 'E'

# wybór między FYQ: 1. częstość tych liter, 2. that, have - częste słowa
decrypted['Q'] = 'A'
decrypted['X'] = 'V'

# QCA -> AND
decrypted['C'] = 'N'
decrypted['A'] = 'D'

decrypted['M'] = 'W' # WITH
decrypted['J'] = 'R' # WHETHER
decrypted['B'] = 'I' # NATIVE
decrypted['N'] = 'P' # PATIENT
decrypted['P'] = 'U' # NATURAL
decrypted['O'] = 'L'
decrypted['F'] = 'S'
decrypted['Y'] = 'O' # częstość

# TO BE OR NOT TO BE THAT IS THE QUESTION
decrypted['K'] = 'B'
decrypted['E'] = 'Q'
decrypted['S'] = 'F'
decrypted['W'] = 'M'
decrypted['I'] = 'G'
decrypted['W'] = 'M'
decrypted['R'] = 'K'
decrypted['L'] = 'Y'
decrypted['H'] = 'Z'
decrypted['T'] = 'C'
print(decrypt_ciphertext(ciphertext, decrypted))