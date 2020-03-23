function busquedaincremental2
clc;
clear;

prom={'ingrese la funcion','ingrese el valor de a:','ingrese el valor de b:', 'ingrese el delta de x:'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'5*exp(-x)-3*sin(x)+x','-10','10','0.1'};
per=inputdlg(prom,name,num,def);
a=str2num(per{2});
b=str2num(per{3});
paso=str2num(per{4});
f=inline(per{1});

figure (1)
fplot(f,[a,b])
fprintf('\n Intervalos con raiz \n Limite inferior    Limite superior \n')
n=(b-a)/paso;
x0=a;
x1=a+paso;
l=1;
ni=0;
intervalo=0;
r=1;
raiz=0;
for i=1:n 
    if f(x0)==0
      raiz(r)=x0;
      r=r+1;
        else if f(x0)*f(x1)<0
          fprintf(' %2.4f %15.4f  \n',x0,x1)
          intervalo(l,1)=x0;
          intervalo(l,2)=x1;
          l=l+1;
          ni=ni+1;           
             end   
    end
    x0=x1;
    x1=x1+paso; 
end
if f(x0)==0
    raiz(r)=x0;
end

if ni==0
    fprintf('No se detectaron intervalos con cambio de signo que indiquen la existencia de una raiz\n')
end

if raiz~=0
    fprintf('%1.10f es raiz\n',raiz)
end


