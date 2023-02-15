alphabet = '*ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def encode(plaintext, key):
    alphabet = list(key)
    alphabet.sort()
    encdic = dict(zip(alphabet, key))
    print(encdic)
    return ''.join(map(lambda c: encdic[c], plaintext))

# =====================================

ciphertext = 'FQMKAYMAMNTFBDQMSELJMJA*MFHMAXTFLMAHJMQDVMSLESGYMKVTVMYQTFGFHBMQDFTQVVHMKFHYQEHM\
YCFQDMDFYMSDFHMHIZZLVJMFHQEMDFYMNTVAYQMFHMAHMVUUETQMQEMVYSAXVMQDVMOFLVMKFHJMYLFX\
XVJMPIFSGL*MQDTEIBDMQDVMBLAYYMJEETYMEUMOFSQET*MCAHYFEHYMQDEIBDMHEQMPIFSGL*MVHEIB\
DMQEMXTVOVHQMAMYKFTLMEUMBTFQQ*MJIYQMUTECMVHQVTFHBMALEHBMKFQDMDFCMQDVMDALLKA*MYCV\
LQMEUMNEFLVJMSANNABVMAHJMELJMTABMCAQYMAQMEHVMVHJMEUMFQMAMSELEITVJMXEYQVTMQEEMLAT\
BVMUETMFHJEETMJFYXLA*MDAJMNVVHMQASGVJMQEMQDVMKALLMFQMJVXFSQVJMYFCXL*MAHMVHETCEIY\
MUASVMCETVMQDAHMAMCVQTVMKFJVMQDVMUASVMEUMAMCAHMEUMANEIQMUETQ*MUFOVMKFQDMAMDVAO*M\
NLASGMCEIYQASDVMAHJMTIBBVJL*MDAHJYECVMUVAQITVYMKFHYQEHMCAJVMUETMQDVMYQAFTYMFQMKA\
YMHEMIYVMQT*FHBMQDVMLFUQMVOVHMAQMQDVMNVYQMEUMQFCVYMFQMKAYMYVLJECMKETGFHBMAHJMAQM\
XTVYVHQMQDVMVLVSQTFSMSITTVHQMKAYMSIQMEUUMJITFHBMJA*LFBDQMDEITYMFQMKAYMXATQMEUMQD\
VMVSEHEC*MJTFOVMFHMXTVXATAQFEHMUETMDAQVMKVVGMQDVMULAQMKAYMYVOVHMULFBDQYMIXMAHJMK\
FHYQEHMKDEMKAYMQDFTQ*MHFHVMAHJMDAJMAMOATFSEYVMILSVTMANEOVMDFYMTFBDQMAHGLVMKVHQMY\
LEKL*MTVYQFHBMYVOVTALMQFCVYMEHMQDVMKA*MEHMVASDMLAHJFHBMEXXEYFQVMQDVMLFUQMYDAUQMQ\
DVMXEYQVTMKFQDMQDVMVHETCEIYMUASVMBAZVJMUTECMQDVMKALLMFQMKAYMEHVMEUMQDEYVMXFSQITV\
YMKDFSDMATVMYEMSEHQTFOVJMQDAQMQDVMV*VYMUELLEKM*EIMANEIQMKDVHM*EIMCEOVMNFBMNTEQDV\
TMFYMKAQSDFHBM*EIMQDVMSAXQFEHMNVHVAQDMFQMTAHM'

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

print(len(ciphertext)//5) # average english word length = 4.7
print(dict(sorted(letter_freq.items(), key=lambda item: item[1])))
# M -> *
decrypted['M'] = '*'

print(dict(sorted(digram_freq.items(), key=lambda item: item[1])))
# QD -> TH
decrypted['Q'] = 'T'
decrypted['D'] = 'H'

decrypted['A'] = 'A'
decrypted['V'] = 'E'
decrypted['K'] = 'W'
decrypted['Y'] = 'S'
decrypted['F'] = 'I'

decrypted['N'] = 'B'
decrypted['T'] = 'R'
decrypted['J'] = 'D'
decrypted['*'] = 'Y'

decrypted['S'] = 'C'
decrypted['E'] = 'O'
decrypted['L'] = 'L'
decrypted['G'] = 'K'

decrypted['B'] = 'G'
decrypted['H'] = 'N'
decrypted['I'] = 'U'
decrypted['X'] = 'P'
decrypted['U'] = 'F'
decrypted['C'] = 'M'
print(decrypt_ciphertext(ciphertext, decrypted))