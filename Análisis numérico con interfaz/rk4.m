function  rk4 
clc 
clear

prom={'ingrtese x0','ingrese xf','ingrese y0','ingres la funcion','ingrese numero de pasos'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'0','0','0','0','0'};
per=inputdlg(prom,name,num,def);
xo=str2num(per{1});
xf=str2num(per{2});
yo=str2num(per{3});
d=per{4};
n=str2num(per{5});

% Entrada   - f es la funcion introducida como cadena de caracteres  'f'
%           - a y b son los extremos izquierdo y derecho
%           - ya es la condicion inicial  y(a)
%           - M es el numero de pasos
% Salida    - R = [T', Y'] donde  T  es el vector de abscisas
%             y  Y  es el vector de ordenadas

%  METODOS NUMERICOS: Programas en Matlab
% (c) 2004 por John H. Mathews y Kurtis D. Fink
%  Software complementario acompañando al texto:
%  METODOS NUMERICOS con Matlab, Cuarta Edicion
%  ISBN: 0-13-065248-2
%  Prentice-Hall Pub. Inc.
%  One Lake Street
%  Upper Saddle River, NJ 07458

f=inline(d,'x','y');
fprintf('\n\t X \t\t\t Y \n')
fprintf(' %f \t %f \n',xo,yo)
h=(xf+xo)/n;
x(1)=xo;
y(1)=yo;

for i=1:n
    x(i+1)=x(i)+h;
    k1=f(x(i),y(i));
    k2=f(x(i)+h/2,y(i)+h*k1/2);
    k3=f(x(i)+h/2,y(i)+h*k2/2);
    k4= f(x(i)+h,y(i)+h*k3);
    y(i+1)=y(i)+ h*(k1+2*k2+2*k3+k4)/6;
    fprintf(' %f \t %f \n',x(i),y(i))
end

end