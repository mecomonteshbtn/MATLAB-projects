clc;
clear;
clf;
t={'INGRESE LOS COEFICIENTES DE X','INGRESE LOS COEFICIENTES DE Y','INGRESE EL NUMERO DE MUESTRAS DESEADAS'};
 def={'[2.2403 2.4908 2.2403]','[1 -0.4 0.75]','[40]'};
 dlgTitle='SISTEMA A SIMULAR';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 num=str2num(answer{1});
 den=str2num(answer{2});
 N=str2num(answer{3});
yi = impz(num,den,N);
yf = filter(num,den,N);
subplot(2,1,1)
stem(yi);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Respuesta al Impulso '); grid;
subplot(2,1,2)
stem(yf);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Respuesta filtrada '); grid;