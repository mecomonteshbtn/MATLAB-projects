function  euler2 
clc;
clear;

fprintf('\n \tRESOLUCION DE ECUACIONES DIFERENCIALES POR MEDIO METODO DE EULER\n')
prom={'ingrtese x0','ingrese xf','ingrese y0','ingres la funcion','ingrese el numero de pasos'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'0','0','0','0','0'};
per=inputdlg(prom,name,num,def);
a=str2num(per{1});
b=str2num(per{2});
ya=str2num(per{3});
f=inline(per{4});
M=str2num(per{5});


% Entrada  - f es la funcion introducida como una cadena de caracteres  'f'
%          - a y b son los extremos izquierdo y derecho
%          - ya es la condicion inicial  y(a)
%          - M es el numero de pasos
% Salida   - E = [T', Y'] donde T es el vector de abscisas y
%            Y es el vector de ordenadas

%  METODOS NUMERICOS: Programas en Matlab
% (c) 2004 por John H. Mathews y Kurtis D. Fink
%  Software complementario acompañando al texto:
%  METODOS NUMERICOS con Matlab, Cuarta Edicion
%  ISBN: 0-13-065248-2
%  Prentice-Hall Pub. Inc.
%  One Lake Street
%  Upper Saddle River, NJ 07458

h = (b - a) / M;
T = zeros(1, M+1);
Y = zeros(1, M+1);
T = a:h:b;
Y(1) = ya;

for  j = 1:M
    x0=T(j);
   Y(j+1) = Y(j) + h *(f(x0));
end

E = [T', Y']
