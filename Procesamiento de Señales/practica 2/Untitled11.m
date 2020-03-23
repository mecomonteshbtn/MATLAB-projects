clf;
clc;
clear;
h = [3 2 1 -2 1 0 -4 0 3];	% Respuesta al impulso 
x = [1 -2 3 -4 3 2 1];		% Secuencia de entrada
y = conv(h,x);
n = 0:14;
subplot(2,1,1);
stem(n,y);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Salida generada por la convolucion'); grid;
x1 = [x zeros(1,8)];
y1 = filter(h,1,x1);
subplot(2,1,2);
stem(n,y1);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Salida generada por el filtro'); grid;