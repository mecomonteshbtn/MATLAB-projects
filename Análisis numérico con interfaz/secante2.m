function secante2
clc;
clear;

prom={'ingrese la funcion','ingrese el valor de a:','ingrese el valor de b:', 'ingrese la tolerancia:','ingrese el numero maximo de iteraciones'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'5*exp(-x)-3*sin(x)+x','2','3','10^-6','100'};
per=inputdlg(prom,name,num,def);
a=str2num(per{2});
b=str2num(per{3});
tol=str2num(per{4});
n=str2num(per{5});
f=inline(per{1});

    x0=a;
    x1=b;   
    fx0=f(x0); 
    
    if fx0==0
        fprintf('%1.10f es Raiz.',x0)
    else 
        fx1=f(x1);
        denominador=fx1-fx0;
        error=tol+1;
        er='';
        i=1;
        fprintf('\n n         xn        f(x)        E             er   \n')
        while i<=n && fx1~=0 && error>tol && denominador~=0
            xn=x1-fx1*((x1-x0)/(fx1-fx0));
            fprintf('%0.0f %10.10f %10.10f %10.10f %10.10f \n',i,x1,fx1,error,er)
            error=abs(xn-x1);
            er=abs((xn-x1)/xn);
            x0=x1;
            fx0=fx1;
            x1=xn;
            fx1=f(x1);
            denominador=fx1-fx0;            
            i=i+1;       
    if fx1==0
       fprintf('\n %1.10f es Raiz.\n',x1)   
       i=n+1;
    elseif error<tol
        fprintf('\n %1.10f es una aproximacion a la raiz con un error maximo de %1.10f \n',x1,tol)
        i=n+1;
    elseif denominador==0
        fprintf('\n Hay una posible raiz multiple \n')
         i=n+1;  
    end
        end
    end
       