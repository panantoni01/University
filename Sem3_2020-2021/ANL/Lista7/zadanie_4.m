n=10;

zeros1=-1.0:2.0/(n):1.0;
w=poly(zeros1);
x=-1.0:0.01:1.0;
y1=polyval(w,x);

y2=cos((n+1)*acos(x))/2^(n);

plot(x,y1,x,y2)
