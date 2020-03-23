clc;
clear;
clf;
n = 0:100;
s1 = cos(2*pi*0.05*n); % funcion a baja frecuencia
s2 = cos(2*pi*0.47*n); % funcion a alta frecuencia
s3 = cos(2*pi*0.05*(n-1));
s4 = cos(2*pi*0.47*(n-1));
x1 = s1+s2;
x2 = s3+s2;
x = 0.5*(x1-x2);
% Implementacion de filtro
M = input('Longitud deseada del filtro = ');
num = ones(1,M);%genera un vector de unos
y = filter(num,1,x)/M;
% Muestra la entrada y la salida
clf;
subplot(3,2,1); % permite graficar varias graficas en una corrida
plot(n, s1);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal #1');
subplot(3,2,2);
plot(n, s2);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal #2');
subplot(3,2,3); % permite graficar varias graficas en una corrida
plot(n, s3);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal #3');
subplot(3,2,4);
plot(n, s4);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal #4');
subplot(3,2,5);
plot(n, x);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal de entrada');
subplot(3,2,6);
plot(n, y);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal de salida');	
axis;
