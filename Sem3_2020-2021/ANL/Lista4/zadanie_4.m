clear

x=-1.4143:0.01:1.4143;
y1=x.^2;
y2=2*cos(3*x+1);

plot(x,y1,'g')
hold on
plot(x,y2,'r')