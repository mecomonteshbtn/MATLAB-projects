% Test de estabilidad basados en la suma de valores absolutos
%de la respuest al impulso
clf;
t={'INGRESE LOS COEFICIENTES DE X','INGRESE LOS COEFICIENTES DE Y','INGRESE LA CANTIDAD DE MUESTRAS DESEADAS'};
 def={'[2.2403 2.4908 2.2403]','[1 -0.4 0.75]','[400]'};
 dlgTitle='SISTEMA A SIMULAR';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 num=str2num(answer{1});
 den=str2num(answer{2});
 N=str2num(answer{3});
h = impz(num,den,N+1);
p = 0;
for k = 1:N+1;
	p = p + abs(h(k));
	if abs(h(k)) < 10^(-6), break, end
end
% Plot la respuesta al impulso
n = 0:N;
stem(n,h)
xlabel('Indce de tiempo n'); ylabel('Amplitud');
% Imprime el valor abs(h(k)) 
disp('Valor =');disp(abs(h(k)));
