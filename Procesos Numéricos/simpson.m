clc
clear all

F = 'X';
a = input('ingrese el valor inicial: ');
b = input('ingrese el valor final: ');
n = input('cuantas divisiones quiere?: ');
f = inline(F); 
h=(b-a)/(n);
x=a:h:b;
sum_pares=0;
sum_impares=0;
for i=1:n/2
   sum_pares=sum_pares+f(x(2*i));
end
for i=1:(n/2)-1
   sum_impares=sum_impares+f(x(2*i+1)); 
end
area=(h/3)*(f(a)+f(b)+4*sum_pares + 2*sum_impares)