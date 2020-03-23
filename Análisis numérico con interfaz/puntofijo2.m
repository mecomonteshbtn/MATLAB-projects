function puntofijo2
clc;
clear;

prom={'ingrese la funcion f','ingrese la funcion g','ingrese el valor de xi:','ingrese la tolerancia:','ingrese el numero de iteraciones'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'5*exp(-x)-3*sin(x)+x','-5*exp(-x)+3*sin(x)+1','3','10^-6','100'};
per=inputdlg(prom,name,num,def);
xi=str2num(per{3});
tol=str2num(per{4});
n=str2num(per{5});
f=inline(per{1});
g=inline(per{2});
        fx=f(xi);
        error=tol+1;
        i=1;
        fprintf('\n n         x        g(x)       f(x)            \n')
        while i<=n && fx~=0 && error>tol  
            x=g(xi);
            fx=f(x);
            error=abs(x-xi);
            er=abs((x-xi)/(x));
            fprintf('%3.0f %10.10f %10.10f %10.10f %10.10f %10.10f \n',i,xi,g(xi),f(x),error,er)
            xi=x;     
            i=i+1;      
        end


        if f(xi)==0
            fprintf('\n La raíz es: %1.10f \n\n',xi)
        else if error<tol
                fprintf('\n %1.10f es una aproximacion a la raiz con un error maximo de %1.10f \n',xi,tol)
            else
             fprintf('\n El metodo fallo en %0.0f iteraciones \n\n',n)  
            end
        end 







