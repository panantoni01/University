#include<stdio.h>
#include<math.h>
#include<stdlib.h>

typedef struct{
    int mian;
    int licz;
} ulamek;

ulamek* nowy_ulamek (int,int);

ulamek* dodaj(ulamek*,ulamek*);
ulamek* odejmij(ulamek*,ulamek*);
ulamek* pomnoz(ulamek*,ulamek*);
ulamek* podziel(ulamek*,ulamek*);