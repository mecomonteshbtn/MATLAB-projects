function trapecio

clc
clear

prom={'ingrese los valores de x','ingrese los valores de y'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'[1 2 3 4 5 6 7]','[0.12 3.4 2.2 3.4 1.2 1.3 3.2]'};
per=inputdlg(prom,name,num,def);
xi=str2num(per{1});
yi=str2num(per{2});
n=length(xi);
h=xi(2)-xi(1);

suma=0;
for i=2:n-1
    suma=suma+yi(i);
end

int=h*(yi(1)+yi(n)+2*suma)/2;

disp ('Aproximacion (trapecio compuesto): ')
disp (int)
end