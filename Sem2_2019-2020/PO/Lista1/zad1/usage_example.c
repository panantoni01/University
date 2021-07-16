#include"z1header.h"

int main()
{
    figura* f = nowa_figura(trojkat,-1,3.5,6.0,8.0,10.7);
    if (f!=NULL) printf("Triangle field: %f\n\n",pole(f)); free(f);
    f = nowa_figura(kolo,0.0,2.5,4.0);
    if (f!=NULL) printf("Circle field: %f\n\n",pole(f));
    figura *tab=malloc(3*sizeof(figura));
    tab[0].type = trojkat;tab[0].locx=-1;tab[0].locy=3.5; tab[0].r = malloc(3*sizeof(float)); tab[0].r[0]=6.0; tab[0].r[1]=8.0; tab[0].r[2]=10.7;
    tab[1].type=kwadrat;tab[1].locx=1.0;tab[1].locy=4;tab[1].r = malloc(sizeof(float));tab[1].r[0]=3.0;
    tab[2].type=kolo;tab[2].locx=0;tab[2].locy=1; tab[2].r = malloc(sizeof(float));tab[2].r[0]=4.0;
    printf("Center of the circle coordinates: %.1f %.1f\n",tab[2].locx,tab[2].locy);
    przesun(tab+2,1.0,-3.0);
    printf("Center of the circle coordinates: %.1f %.1f\n\n",tab[2].locx,tab[2].locy);
    printf("Sum of the fields: %f\n",sumapol(tab,3));
    free(f); free(tab);
    return 0;
}