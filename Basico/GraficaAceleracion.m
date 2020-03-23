clear all;
clc;

%tenga en cuenta que la variable dependiente del ejercicio es y, pero para
%resolverla se hizo con t, es decir que la y equivale a la t

syms g0 R y t;

R=6370000
g0=9.8

aceleracion=-g0*(R^2)/((R+t)^2)

V=dsolve('(Dv)*v=-397653620000000/(6370000+t)^2','v(40000)=600');
Velocidad=simplify(V)

Altura_maxima=solve('20/641*6410^(1/2)*(-(6370000+t)*(19824991*t-1162792540000))^(1/2)/(6370000+t)','t')

clear all

subplot(2,1,1)
y=40000:0.1:60000;
V=20.\641.*6410.^(1/2).*(-(6370000+y).*(19824991.*y-1162792540000)).^(1/2).\(6370000+y);
plot(y,V)
XLABEL('altura (Y) [m]');
YLABEL('Velocidad [m/s]');
TITLE('VELOCIDAD RESPECTO A LA ALTURA ');

subplot(2,1,2)
y=58652:0.05:58653;
V=20.\641.*6410.^(1/2).*(-(6370000+y).*(19824991.*y-1162792540000)).^(1/2).\(6370000+y);
plot(y,V)
XLABEL('altura (Y) [m]');
YLABEL('Velocidad [m/s]');
TITLE('VELOCIDAD RESPECTO A LA ALTURA(zoom en la altura maxima)');
