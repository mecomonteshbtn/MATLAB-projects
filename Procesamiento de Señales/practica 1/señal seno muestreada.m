clc;
clear;
%señal senoidal de 1 Herz
fs=128;% frecuencia de muestreo
N=8*64;% longitud de la señal
ts=1/fs;%Tiempo de muestreo
k=0:N-1;
t=k*ts;% Escala de tiempo
f=1;%Definir la frecuencia de la onda
x=sin(2*pi*f*t); %x=cos(2*pi*f*t);
plot(t,x);
title('senoide');
xlabel('s'),ylabel('x(t)');
grid