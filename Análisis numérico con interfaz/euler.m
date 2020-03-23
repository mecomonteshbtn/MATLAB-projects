function euler
clc;
clear;

fprintf('\n \tRESOLUCION DE ECUACIONES DIFERENCIALES POR MEDIO METODO DE EULER\n')
prom={'ingrtese x0','ingrese xf','ingrese y0','ingres la funcion','ingrese el numero de pasos'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'0','0','0','0','0'};
per=inputdlg(prom,name,num,def);
x0=str2num(per{1});
x1=str2num(per{2});
y0=str2num(per{3});
f=inline(per{4});
n=str2num(per{5});


h=(x1-x0)/n;
xs=x0:h:x1;
y1=y0;
fprintf('\n''it x0 x1 y1');
for i=1:n
it=i-1;
x0=xs(i);
x1=xs(i+1);
y=y0;
y1=y0+h*(f(x0));
fprintf('\n%2.0f%10.6f%10.6f%10.6f\n',it,x0,x1,y1);
y0=y1;
end
fprintf('\n El punto aproximado y(x1) es = %10.6f\n',y1);
end 