function biseccion2
clc;
clear;

prom={'ingrese la funcion','ingrese el valor de a:','ingrese el valor de b:', 'ingrese la tolerancia:'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'5*exp(-x)-3*sin(x)+x','2','3','10^-6'};
per=inputdlg(prom,name,num,def);
a=str2num(per{2});
b=str2num(per{3});
tol=str2num(per{4});
f=inline(per{1});
n=ceil(log((b-a)/tol)/log(2));
fprintf('\n n     a               b               x             f(x)         E        er   \n')
x=(a+b)/2;
error=abs(a-x);
    if f(a)==0
        fprintf('\n La raíz es: %1.10f \n',a)
    else if f(b)==0
        fprintf('\n La raíz es: %1.10f \n',b)
        else if f(a)*f(b)<0 
                x=(a+b)/2;
                fx=f(x);
                i=1;
                error=abs(a-x);
                er='';
            while i<=n && fx~=0 && error>tol               
                fprintf('%3.0f %10.10f %10.10f %10.10f %10.10f %10.10f %10.10f \n',i,a,b,x,f(x),error,er)                           
                if f(a)*f(x)<0
                    b=x;                    
                    else
                    a=x;
                end
                aux=x; 
                x=(a+b)/2;
                error=abs(x-aux);
                er=abs((aux-x)/x);
                fx=f(x);
                i=i+1;
            end
            
            end
            end
        end
 
    if f(x)==0
                fprintf('\n La raíz es: %1.10f \n',x)
                i=n;
    else if error<tol
                fprintf('\n %1.10f es una aproximacion a la raiz con un error maximo de %1.10f \n',x,tol)
                i=n;
                else 
                fprintf('\n Fracaso en %0.0f iteraciones.\n',n)
                end
    
   end