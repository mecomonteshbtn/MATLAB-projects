% Implementacion de sistemas en cascada
clf;
clc;
clear;
x = [1 zeros(1,40)]; % Genera la entrada
n = 0:40;
% Coeficientes del sistema de 4 orden
t={'INGRESE LOS COEFICIENTES DE X','INGRESE LOS COEFICIENTES DE Y','INGRESE EL VALOR DE IC1','INGRESE EL VALOR DE IC2','INGRESE EL VALOR IC'};
 def={'[2.2403 2.4908 2.2403]','[1 -0.4 0.75]','[0 0.1]','[0 0.4]','[0 0]'};
 dlgTitle='SISTEMA A SIMULAR';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 num=str2num(answer{1});
 den=str2num(answer{2}); 
 ic1=str2num(answer{3});
 ic2=str2num(answer{4});
 ic=str2num(answer{5});
% Calcula la salida del sistema
y = filter(num,den,x,ic);
% Coeficientes del sistema de 2 orden
num1 = [0.3 -0.2 0.4];den1 = [1 0.9 0.8];
num2 = [0.2 -0.5 0.3];den2 = [1 0.7 0.85];
% Salida y1[n] de la primera etapa
y1 = filter(num1,den1,x,ic1);
% Salida y2[n] de la segunda  etapa 
y2 = filter(num2,den2,y1,ic2);
% Diference entre y[n] and y2[n]
d = y - y2;
% Plot la diferencia en la señal
subplot(3,1,1);
stem(n,y);
ylabel('Amplitud');
title('Salida del sistema de orden 4'); grid;
subplot(3,1,2);
stem(n,y2)
ylabel('Amplitud');
title('Salida, Implemetacion en cascada'); grid;
subplot(3,1,3);
stem(n,d)
xlabel('Indice de tiempo  n');ylabel('Amplitud');
title('Diferencia de la señal'); grid;