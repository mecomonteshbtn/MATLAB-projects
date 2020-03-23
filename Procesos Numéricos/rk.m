% ya es la funcion evaluada en a
% f es de tipo inline
function [t,w] = rk(f,a,b,ya,N)
h = (b - a) / N;
t = zeros(1,N+1);
w = zeros(1,N+1);

t = a : h : b;
w(1) = ya;
k1 = zeros(1,1);
k2 = zeros(1,1);
for j=1:N
    k1 = f(t(j),w(j));
    k2 = f(t(j) + (3 * h / 4) , w(j) + (3 * k1 * h / 4));
    w(j+1)=w(j)+h*(k1/3)+2*h*(k2/3);
end
t=t';
w=w';
end
%los dos ultimos terminos de k2 son p y q, en este caso 3/4
%los dos ultimos terminos de w(j+1)son a1 y a2, en este caso 1/3 y 2/3
%N es b-a/h

%metodo ralston a2=2/3---a1=1/3---p=3/4---q=3/4
%punto medio   a1=0---a2=1--- p y q= 1/2
%heun a1 y a2=1/2---p y q= 1