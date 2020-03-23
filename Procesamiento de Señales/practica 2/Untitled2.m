clc;
clear;
clf;
n = 0:40;
a = 2;b = -3;
x1 = cos(2*pi*0.1*n);
x2 = cos(2*pi*0.4*n);
xn = a*x1 + b*x2;
t={'INGRESE LOS COEFICIENTES DE X','INGRESE LOS COEFICIENTES DE Y','INGRESE LAS CONDICIONES INICIALES'};
 def={'[2.2403 2.4908 2.2403]','[1 -0.4 0.75]','[0 0]'};
 dlgTitle='SISTEMA A SIMULAR';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 num=str2num(answer{1});
 den=str2num(answer{2});
 ic=str2num(answer{3});
y1 = filter(num,den,x1,ic); % Calcula la salida  y1[n]
y2 = filter(num,den,x2,ic); % Calcula la salida  y2[n]
yn = filter(num,den,xn,ic); % Calcula la salida  y[n]
yt = a*y1 + b*y2; 
d = yn - yt; % Salida diferencial d[n]
% Grafica las salidas
subplot(3,3,1)
stem(n,x1);
ylabel('Amplitud');
%title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
title('entrada x1');
subplot(3,3,2)
stem(n,x2);
ylabel('Amplitu');
title('entrada x2');
subplot(3,3,5)
stem(n,y1);
ylabel('Amplitud');
%title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
title('salida y1');
subplot(3,3,4)
stem(n,y2);
ylabel('Amplitu');
title('salida y2');
subplot(3,3,3)
stem(n,xn);
ylabel('Amplitud');
title('entrada: xn=a.x1[n]+b.x2[n]');
subplot(3,3,6)
stem(n,yn);
ylabel('Amplitud');
title('Salida: yn=a.x1[n]+b.x2[n]');
subplot(3,3,7)
stem(n,yt);
xlabel('Indice de tiempo n');ylabel('Amplitud');
title('Salida: yt=a.y1[n]+b.y2[n]');
subplot(3,3,8)
stem(n,d);
xlabel('Indice de tiempo n');ylabel('Amplitud');
title('Señal diferencial: d=yn-yt');