function derivada
clc
clear

prom={'ingrese los valores de x','ingrese los valores de y'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'[1 2 3 4 5]','[0.12 3.4 2.2 -3.4 1.2]'};
per=inputdlg(prom,name,num,def);
xi=str2num(per{1});
yi=str2num(per{2});

h=xi(2)-xi(1);
n=length(xi);

if n==2
    der=(yi(2)-yi(1))/h;
elseif n==3
    der=(3*yi(1)-4*yi(2)+yi(3))/(2*h);
elseif n==5
    der=(-yi(1)+8*yi(2)-8*yi(4)+yi(5))/(12*h);
end

disp ('Aproximacion (centrada): ')
disp (der)
end