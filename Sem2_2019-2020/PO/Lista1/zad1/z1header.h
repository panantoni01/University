#include<stdio.h>
#include<math.h>
#include<string.h>
#include<stdlib.h>
#include<stdarg.h>

//#define SQRT3 1.7320508

 typedef enum{
    trojkat = 1,
    kwadrat = 2,
    kolo = 3
}typfig;

typedef struct{
    typfig type;
    float *r;
    float locx;
    float locy;
} figura;

figura* nowa_figura (typfig,float,float,float,...);

float pole(figura*);
void przesun (figura*,float,float);
float sumapol(figura*,int);
