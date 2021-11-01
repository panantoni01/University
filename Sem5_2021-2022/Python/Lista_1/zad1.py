from decimal import *


zakupy = [0.2, 0.5, 4.59, 6]

def vat_faktura(lista):
    vat = 0
    for i in lista:
        vat += i
    vat *= 0.23
    return vat

def vat_paragon(lista):
    vat = 0
    for i in lista:
        vat += 0.23 * i
    return vat

print(vat_faktura(zakupy) == vat_paragon(zakupy))

########################################

def vat_faktura_dec(lista):
    vat = Decimal('0')
    for i in lista:
        vat += Decimal(str(i))
    vat *= Decimal('0.23')
    return vat

def vat_paragon_dec(lista):
    vat = Decimal('0')
    for i in lista:
        vat += Decimal(Decimal('0.23') * Decimal(str(i)))
    return vat

print(vat_faktura_dec(zakupy) == vat_paragon_dec(zakupy))
