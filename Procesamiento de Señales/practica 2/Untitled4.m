clc;
clear;
clf;
n = 0:40; D = 10;a = 3.0;b = -2;
x = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n);
xd = [zeros(1,D) x];
t={'INGRESE LOS COEFICIENTES DE X','INGRESE LOS COEFICIENTES DE Y','INGRESE LAS CONDICIONES INICIALES'};
 def={'[2.2403 2.4908 2.2403]','[1 -0.4 0.75]','[0 0]'};
 dlgTitle='SISTEMA A SIMULAR';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 num=str2num(answer{1});
 den=str2num(answer{2});
 ic=str2num(answer{3});
% Calcular la salida y[n]
y = filter(num,den,x,ic);
% Calcular la salida  yd[n]
yd = filter(num,den,xd,ic);
% Calcular la diferencia en la salida d[n]
d = y - yd(1+D:41+D);
% Dibujar las salidas
subplot(3,1,1)
stem(n,y);
ylabel('Amplitud'); 
title('Salida y[n]'); grid;
subplot(3,1,2)
stem(n,yd(1:41));
axis([0 40 -40 20])
ylabel('Amplitud');
title(['Salida debido al atrazo  x[n  - D', num2str(D),']']); grid;
subplot(3,1,3)
stem(n,d);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal diferencial'); grid;