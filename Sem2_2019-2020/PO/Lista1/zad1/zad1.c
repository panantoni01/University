#include"z1header.h"
/*figura* nowa_figura(typfig type,float x,float y,float a)
{
    if (a<=0)
    {
        if(type == kolo) printf("Error: invalid radius value\n");
        else printf("Error: invalid side value\n");
        return NULL;
    }
    figura *f = malloc(sizeof(figura));
    f->r = a; f->locx = x; f->locy = y;
    f->type = type;
    return f;
}*/

figura* nowa_figura(typfig type,float x,float y,float a, ...)
{
    if (a<=0)
    {
        if(type == kolo) printf("Error: invalid radius value\n");
        else printf("Error: invalid side value\n");
        return NULL;
    }
    figura *f =  malloc(sizeof(figura));
    f->locx = x; f->locy = y; f->type = type;
    switch(type){
        case kwadrat: f->r = malloc(sizeof(float)); f->r[0] = a; break;
        case kolo: f->r = malloc(sizeof(float)); f->r[0] = a; break;
        default: //trojkat
            f->r = malloc(3*sizeof(float));
            va_list arg;
            va_start(arg,a);
            double bok; int i=0;
            for (bok = a; bok; bok = va_arg(arg,double))
            {
                f->r[i++] = bok;
            }
            va_end(arg);
            //printf("%f\n",f->r[0]);
            //printf("%f\n",f->r[1]);
            //printf("%f\n",f->r[2]);
            if (f->r[0]+f->r[1]<=f->r[2] || f->r[0]+f->r[2]<=f->r[1] || f->r[1]+f->r[2]<=f->r[0])//warunek trójkąta
            {
                printf("Error: triangle inequality\n");
                free(f);
                return NULL;
            }
    }
    return f;
}

float pole(figura *f)
{
    if (f->type == kwadrat) return (f->r[0]*f->r[0]);
    if (f->type == kolo) return (f->r[0]*f->r[0]*M_PI);
    if (f->type == trojkat)
    {
        float s = 0.5*(f->r[0] + f->r[2] + f->r[1]);
        s*=(s-f->r[0])*(s-f->r[1])*(s-f->r[2]);
        s=sqrt(s);
        return s;
    }
    else return 0;
}

void przesun (figura *f,float x,float y)
{
    f->locx += x;
    f->locy += y;
    return;
}
float sumapol(figura *f,int size)
{
    float suma = 0;
    for (int i=0;i<size;i++)
    {
        suma += pole(f);
        //printf("%f\n",pole(f));
        f++;
    }
    return suma;
}