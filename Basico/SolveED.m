clear all;
clc;

syms t ;

ax=3*t-4
ay=2*t

Vx=dsolve('Dv=3*t-4','v(0)=0');
Vx=simplify(Vx)

Sx=dsolve('Dx=1.5*t^2-4*t','x(0)=0');
Sx=simplify(Sx)

Vy=dsolve('Dv=2*t','v(0)=0');
Vy=simplify(Vy)

Sy=dsolve('Dy=t^2','y(0)=0');
Sy=simplify(Sy)

t=0:0.1:10;
plot3(Sy,Sx,t)
XLABEL('Distancia en X [m]');
YLABEL('Distancia en Y [m]');
ZLABEL('tiempo [s]');
TITLE('RECORRIDO TOTAL DE LA PARTICULA'); 