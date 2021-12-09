from itertools import product

class Formula: 
    def oblicz(self, zmienne : dict):
        raise NotImplementedError
    def znajdz_zmienne(self):
        raise NotImplementedError
    
    def tautologia(self):
        zmienne = self.znajdz_zmienne()
        all_perms = list(product([True, False], repeat = len(zmienne)))
        for perm in all_perms:
            if self.oblicz(dict(zip(zmienne, perm))) == False:
                return False
        return True

    @staticmethod
    def is_literal(formula): # używana w __str__ (redukcja niepotrzebnych nawiasów)
        if isinstance(formula, (Zmienna, Stala)):
            return True
        elif isinstance(formula, Not) and Formula.is_literal(formula.arg1):
            return True
        else:
            return False

    @staticmethod
    def uprosc(formula):
        if isinstance(formula, Not) and isinstance(formula.arg1, Not): # redukcja wielu negacji
            return Formula.uprosc(formula.arg1.arg1)
        if isinstance(formula, And):
            if isinstance(formula.arg1, Stala):
                if formula.arg1.value == True:
                    return Formula.uprosc(formula.arg2)
                else: # formula.arg1.value == False
                    return Stala(False)
            if isinstance(formula.arg2, Stala):
                if formula.arg2.value == True:
                    return Formula.uprosc(formula.arg1)
                else: # formula.arg2.value == False
                    return Stala(False)
        if isinstance(formula, Or):
            if isinstance(formula.arg1, Stala):
                if formula.arg1.value == True:
                    return Stala(True)
                else: # formula.arg1.value == False
                    return Formula.uprosc(formula.arg2)
            if isinstance(formula.arg2, Stala):
                if formula.arg2.value == True:
                    return Stala(True)
                else: # formula.arg2.value == False
                    return Formula.uprosc(formula.arg1)         
 
    def __mul__(arg1, arg2):
        return And(arg1, arg2)

    def __add__(arg1, arg2):
        return Or(arg1, arg2)

class Operator2Arg(Formula):
    def __init__(self, arg1 : Formula, arg2 : Formula):
        self.arg1 = arg1
        self.arg2 = arg2
    def znajdz_zmienne(self):
        zm1 = self.arg1.znajdz_zmienne()
        zm2 = self.arg2.znajdz_zmienne()
        return list(set(zm1 + zm2))
    

class Impl(Operator2Arg):
    def oblicz(self, zmienne : dict):
        if self.arg1.oblicz(zmienne) == True and self.arg2.oblicz(zmienne) == False:
            return False
        return True
    def __str__(self):
        str1 = (str(self.arg1) if Formula.is_literal(self.arg1) else "("+str(self.arg1)+")")
        str2 = (str(self.arg2) if Formula.is_literal(self.arg2) else "("+str(self.arg2)+")")
        return str1 + " ⇒ " + str2

class Iff(Operator2Arg):
    def oblicz(self, zmienne : dict):
        return self.arg1.oblicz(zmienne) == self.arg2.oblicz(zmienne)
    def __str__(self):
        str1 = (str(self.arg1) if Formula.is_literal(self.arg1) else "("+str(self.arg1)+")")
        str2 = (str(self.arg2) if Formula.is_literal(self.arg2) else "("+str(self.arg2)+")")
        return str1 + " ⇔ " + str2

class And(Operator2Arg):
    def oblicz(self, zmienne : dict):
        return self.arg1.oblicz(zmienne) and self.arg2.oblicz(zmienne)
    def __str__(self):
        str1 = (str(self.arg1) if Formula.is_literal(self.arg1) else "("+str(self.arg1)+")")
        str2 = (str(self.arg2) if Formula.is_literal(self.arg2) else "("+str(self.arg2)+")")
        return str1 + " ∧ " + str2


class Or(Operator2Arg):
    def oblicz(self, zmienne : dict):
        return self.arg1.oblicz(zmienne) or self.arg2.oblicz(zmienne)
    def __str__(self):
        str1 = (str(self.arg1) if Formula.is_literal(self.arg1) else "("+str(self.arg1)+")")
        str2 = (str(self.arg2) if Formula.is_literal(self.arg2) else "("+str(self.arg2)+")")
        return str1 + " ∨ " + str2

class Not(Formula):
    def __init__(self, arg1 : Formula):
        self.arg1 = arg1
    def znajdz_zmienne(self):
        return self.arg1.znajdz_zmienne()
    def oblicz(self, zmienne : dict):
        return not self.arg1.oblicz(zmienne)
    def __str__(self):
        string = (str(self.arg1) if Formula.is_literal(self.arg1) else "("+str(self.arg1)+")")
        return "¬" + string

class Zmienna(Formula):
    def __init__(self, name : str):
        self.name = name
    def znajdz_zmienne(self):
        return list(self.name)
    def oblicz(self, zmienne : dict):
        if self.name in zmienne:
            return zmienne[self.name]
        else:
            raise BrakWartosciZmiennej(self.name)
    def __str__(self):
       return self.name
    
class Stala(Formula):
    def __init__(self, value : bool):
        self.value = value
    def znajdz_zmienne(self):
        return []
    def oblicz(self, zmienne : dict):
        return self.value
    def __str__(self):
        return str(self.value)



class BrakWartosciZmiennej(Exception):
    def __init__(self, zmienna):
        self.zmienna = zmienna
    def __str__(self):
        return "Zmiennej \"" + self.zmienna + "\" nie przypisano wartosci"

###################################################

f = Not(Not(Or(Not(Not(Not(Zmienna("x")))), And(Zmienna("y"), Stala(True)))))
print(str(f) + " = " + str(f.oblicz({"x" : True, "y" : False})))
print("Czy tautologia: " + str(f.tautologia()))
print()

f1 = Not(Zmienna("x"))
f2 = Zmienna("y")
f3 = Stala(True)
print(str(f1 + (f2 * f3)) + " = " + str((f1 + (f2 * f3)).oblicz({"x" : True, "y" : False})))
print("Czy tautologia: " + str((f1 + (f2 * f3)).tautologia()))
print()

taut1 = Or(Zmienna("x"), Not(Zmienna("x")))
print(taut1)
print("Czy tautologia: " + str(taut1.tautologia()))
print()

taut2 = Iff(Impl(Zmienna("A") * Zmienna("B"), Zmienna("C")), Impl(Zmienna("A"), Impl(Zmienna("B"), Zmienna("C"))))
print(taut2)
print("Czy tautologia: " + str(taut2.tautologia()))
print()

try:
    form = And(Or(Zmienna("p"), Not(Zmienna("p"))), Or(Zmienna("q"), Not(Zmienna("q"))))
    print(str(form) + " = " + str(form.oblicz({"p" : True})))
    print("Czy tautologia: " + str(form.tautologia()))
    print()
except BrakWartosciZmiennej as ex:
    print(str(ex)) 
    print()

form = Not(Not(And(Zmienna("p"), Stala(False))))
form_upr = Formula.uprosc(form)
print(str(form) + " = " + str(form_upr))