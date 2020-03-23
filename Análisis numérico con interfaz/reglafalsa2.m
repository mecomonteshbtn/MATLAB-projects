function reglafalsa2
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
fprintf('\n n     a               b               x             f(x)         E        er   \n') 
error=tol+1;

if f(a)==0
        fprintf('\n La raíz es: %1.10f \n',a)
    else if f(b)==0
        fprintf('\n La raíz es: %1.10f \n',b)
        else if f(a)*f(b)<0 
                   
                x=a-((f(a)*(b-a))/(f(b)-f(a)));
                fx=f(x);
                i=1;
                error=tol+1;
                er='';
            while i<=n && fx~=0 && error>tol               
                fprintf('%3.0f %10.10f %10.10f %10.10f %10.10f %10.10f %10.10f \n',i,a,b,x,f(x),error,er)                            
                if f(a)*f(x)<0
                    b=x;                    
                    else
                    a=x;
                end
                aux=x; 
                x=a-((f(a)*(b-a))/(f(b)-f(a)));
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
else if error<tol
    fprintf('\n %1.10f es una aproximacion a la raiz con un error maximo de %1.10f \n',x,tol)
else 
    fprintf('\nFracaso en %0.0f iteraciones.\n',n)
end
end   