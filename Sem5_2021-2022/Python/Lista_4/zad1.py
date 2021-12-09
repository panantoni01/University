from itertools import permutations
import operator

def eval_str(string, dictionary): # wylicz wartość `string` na podstawie przyporządkowania z `dictionary`
    s = 0
    for char in string:
        s *= 10
        s += dictionary[char]
    return s
    
def kryptarytm(num1, num2, result, func):
    letters = set(num1 + num2 + result)
    if len(letters) > 10:
        return

    for perm in permutations(range(10), len(letters)):
        dictionary = dict(zip(letters, perm))
        eval_num1 = eval_str(num1, dictionary)
        eval_num2 = eval_str(num2, dictionary)
        eval_result = eval_str(result, dictionary)
        if func(eval_num1, eval_num2) == eval_result:
            yield dictionary



for i in kryptarytm("kioto", "osaka", "tokio", operator.add):
    print(i)

for i in kryptarytm("send", "more", "money", operator.add):
    print(i)

for i in kryptarytm("dom", "dom", "miasto", operator.mul):
    print(i)