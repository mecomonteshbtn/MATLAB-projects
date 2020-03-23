function simpson38

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

suma1=0;
suma2=0;
for i=2:1:n-1
    if mod((i-1),3)==0
        suma1=suma1+yi(i);
    else
        suma2=suma2+yi(i);
    end
end

int=3*h*(yi(1)+yi(n)+3*suma2+2*suma1)/8;

disp ('Aproximacion (simpson 3/8 compuesta  ): ')
disp (int)
end