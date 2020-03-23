clc;
clear;
clf;
n = 0:40; D = 10;a = 3.0;b = -2;
t={'INGRESE LOS COEFICIENTES DE X','INGRESE LOS COEFICIENTES DE Y','INGRESE EL VALOR DE F1','INGRESE EL VALOR DE F2','INGRESE LAS CONDICIONES INICIALES'};
 def={'[2.2403 2.4908 2.2403]','[1 -0.4 0.75]','[0.1]','[0.4]','[0 0]'};
 dlgTitle='SISTEMA A SIMULAR';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 f1=str2num(answer{3});
 f2=str2num(answer{4});
 num=str2num(answer{1});
 den=str2num(answer{2});
 ic=str2num(answer{5});
x1 = a*cos(2*pi*f1*n) + b*cos(2*pi*f2*n);
x2 = a*cos(2*pi*f1*(n-10)) + b*cos(2*pi*f2*(n-10));
xd1 = [zeros(1,D) x1];
xd2 = [zeros(1,D) x2];
% Calcular la salida y[n]
y1 = filter(num,den,x1,ic);
y2 = filter(num,den,x2,ic);
% Calcular la salida  yd[n]
yd1 = filter(num,den,xd1,ic);
yd2 = filter(num,den,xd2,ic);
% Calcular la diferencia en la salida d[n]
d1 = y1 - yd1(1+D:41+D);
d2 = y2 - yd2(1+D:41+D);
% Dibujar las salidas
subplot(3,2,1)
stem(n,y1);
ylabel('Amplitud'); 
title('Salida y[n]'); grid;
subplot(3,2,3)
stem(n,yd1(1:41));
axis([0 40 -40 20])
ylabel('Amplitud');
title(['Salida debido al atrazo  x[n  - D', num2str(D),']']); grid;
subplot(3,2,5)
stem(n,d1);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal diferencial'); grid;
subplot(3,2,2)
stem(n,y2);
ylabel('Amplitud'); 
title('Salida y[n]'); grid;
subplot(3,2,4)
stem(n,yd2(1:41));
axis([0 40 -40 20])
ylabel('Amplitud');
title(['Salida debido al atrazo  x[n  - D', num2str(D),']']); grid;
subplot(3,2,6)
stem(n,d2);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Señal diferencial'); grid;