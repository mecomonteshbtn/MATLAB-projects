
syms t v C;
a=-t*v+exp(t)
V=int(a,t);
velocidad=V+C
t=0;
v=eval(V);
C=10-v
velocidad=V+C
syms t v C c;
X=int(velocidad,t);
desplazamiento=X+c
t=0;
x=eval(X);
c=0-x
desplazamiento=X+c


clear all
syms t v C;
a=-(t^2)*v+1+3*t
V=int(a,t);
velocidad=V+C
t=0;
v=eval(V);
C=5-v
velocidad=V+C
syms t v C c;
X=int(velocidad,t);
desplazamiento=X+c
t=0;
x=eval(X);
c=1-x
desplazamiento=X+c