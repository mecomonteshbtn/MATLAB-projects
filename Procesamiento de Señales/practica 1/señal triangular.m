clc;
clear;
%triangle=(-sawtooth(t,1)) % Forma para generar una señal rampa
t=-3*pi:0.01:3*pi;%definición del vector tiempo  
triangle=(-sawtooth(t,0.5))

t=-3:6/1884:3;%Dedefinición del tiempo para ajustar el paso portero en 0.5
plot (t,triangle);grid % Grafica la señal
xlabel('t (s)');ylabel('y(t)');
ttle=['Señal triangular'];
title(ttle);
