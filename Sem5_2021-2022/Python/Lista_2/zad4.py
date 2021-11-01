import random

def word_len(word : str):
    return len(word.rstrip(",.!?\"\'")) # do długości słowa nie chcemy wliczać znaków interpunkcyjnych itp.

def uprosc_zdanie(tekst : str, dl_slowa, liczba_slow):
    if len(tekst) == 0:
        return tekst
    
    words = list(filter(lambda word: word_len(word) <= dl_slowa, tekst.split()))
    randomlist = sorted(random.sample(range(0, len(words)), liczba_slow))
    
    result = " ".join([words[i] for i in randomlist])
    if result[-1] not in ".!?":
        result += '.'
    return result.capitalize()


#################

tekst = "Podział peryklinalny inicjałów wrzecionowatych \
kambium, charakteryzuje się ścianą podziałową inicjowaną \
w płaszczyźnie maksymalnej."

print(uprosc_zdanie(tekst, 11, 7))

#################

tekst2 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit \
    , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi \
    ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit\
    in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur\
    sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit\
    anim id est laborum."

for zdanie in tekst2.replace("?", ".").replace("!", ".").split('.'):
    print(uprosc_zdanie(zdanie, 10, 5), end=' ')
