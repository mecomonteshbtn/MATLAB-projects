clc
clear all
F = '1/X';
a = input('ingrese el valor inicial: ');
b = input('ingrese el valor final: ');
n = input('cuantas divisiones quiere?: ');
f=inline(F);
	h=(b-a)/n;
	aprox=f(a)+f(b);
		for i=1:n-1
			x=a+i*h;
			aprox=aprox+2*f(x);
		end
aprox=(h/2)*aprox


