%generar una senoide 20 hz muestreada a 128 Hz
t={'INGRESE LA FECUENCIA DE LA SEÑAL','INGRESE LA FRECUENCIA DE MUESTREO','INGRESE EL NUMERO DE MUESTRAS DESEADAS'};
 def={'[20]','[128]','[64]'};
 dlgTitle='DATOS DE LA SEÑAL A TRANSFORMAR';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 f=str2num(answer{3});
 fs=str2num(answer{1});
 N=str2num(answer{2});
ts=1/fs;
k=0:N-1;
t=k*ts;
%Definir la frecuencia de la onda
subplot(3,1,1);
x=5-cos(1000*pi*f*t);
%x=cos(2*pi*f*t);
plot(t,x);
title('senoide');
xlabel('kT,s'),ylabel('x(kt)');
grid
% calcular y graficar el contenido de frecuencias
y=fft(x);
magy=abs(y);
subplot(3,1,2);
stem(k(1:N/2),magy(1:N/2));
%stem(hz,abs(y));
title('Magnitud de X(k)');
xlabel('k'),ylabel('lx(k)l');
grid
%graficar el contenido de frecuencias en funcion de Hz
hz=k/(N*ts);
subplot(3,1,3);
stem(hz(1:N/2),magy(1:N/2));
%stem(hz,abs(y));
title('Magnitud de X(k)');
grid
xlabel('Hz'),ylabel('lx(k)l')