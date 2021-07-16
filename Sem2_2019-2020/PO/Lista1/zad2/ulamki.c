#include"z2headers.h"

static int nwd(int a,int b)
{
    if(b!=0) return nwd(b,a%b);
    return a;
}

ulamek* nowy_ulamek(int l,int m)
{
    if (m==0) return NULL;
    ulamek *u = malloc(sizeof(ulamek));
    if ((l<0 && m<0) || (m<0 && l>0)) {l*=-1; m*=-1;}
    if (l==m) {u->mian=1; u->licz=1; return u;}//gdy licznik==mianownik
    int n = nwd(l,m);
    l/=n; m/=n;
    if ((l<0 && m<0) || (m<0 && l>0)) {l*=-1; m*=-1;}
    u->licz=l; u->mian=m;
    return u;
}

ulamek* dodaj(ulamek *u1,ulamek *u2)
{
    int nwdzielnik = nwd (u1->mian,u2->mian);
    //printf("nwd: %d\n",nwdzielnik);
    int nww = (u1->mian*u2->mian)/nwdzielnik;
    //printf("nww: %d\n",nww);
    int m = nww; int l1=u1->licz*(nww/u1->mian); int l2=u2->licz*(nww/u2->mian);
    ulamek *u = malloc(sizeof(ulamek));
    u->licz = l1 + l2;
    u->mian = m;
    int nwd2 = nwd(u->licz,u->mian);
    u->licz/=nwd2; u->mian/=nwd2;
    if ((u->licz<0 && u->mian<0) || (u->mian<0 && u->licz>0)) {u->licz*=-1; u->mian*=-1;}
    return u;
}

ulamek* odejmij(ulamek *u1,ulamek *u2)
{
    ulamek *help = malloc(sizeof(ulamek));
    help->licz = (-1)*u2->licz;
    help->mian = u2->mian;
    ulamek *u = malloc(sizeof(ulamek));
    u = dodaj(u1,help);
    free(help);
    return u;
}

ulamek* pomnoz (ulamek *u1,ulamek *u2)
{
    ulamek* u = malloc(sizeof(ulamek));
    u->licz = u1->licz*u2->licz;
    u->mian = u1->mian*u2->mian;
    return u;
}

ulamek* podziel (ulamek *u1,ulamek *u2)
{
    ulamek* u = malloc(sizeof(ulamek));
    u->licz = u1->licz*u2->mian;
    u->mian = u1->mian*u2->licz;
    return u;
}

static ulamek* dodajmod(ulamek *u1,ulamek *u2)
{
    int nwdzielnik = nwd (u1->mian,u2->mian);
    //printf("nwd: %d\n",nwdzielnik);
    int nww = (u1->mian*u2->mian)/nwdzielnik;
    //printf("nww: %d\n",nww);
    int m = nww; int l1=u1->licz*(nww/u1->mian); int l2=u2->licz*(nww/u2->mian);
    u2->licz = l1 + l2;
    u2->mian = m;
    int nwd2 = nwd(u2->licz,u2->mian);
    u2->licz/=nwd2; u2->mian/=nwd2;
    if ((u2->licz<0 && u2->mian<0) || (u2->mian<0 && u2->licz>0)) {u2->licz*=-1; u2->mian*=-1;}
    return u2;
}

int main()
{
    ulamek *u1;
    ulamek *u2;
    ulamek *u;
    u1 = nowy_ulamek(8, -4);
    u2 = nowy_ulamek(-5, -6);
    u = dodaj(u1, u2);
    printf("%d %d\n",u1->licz,u1->mian);
    printf("%d %d\n",u2->licz,u2->mian);   
    printf("dodawanie: %d %d\n",u->licz,u->mian);
    u = pomnoz(u1, u2);
    printf("mnozenie: %d %d\n",u->licz,u->mian);
    return 0;
}