function newton2
clc;
clear;

prom={'ingrese la funcion','ingrese la derivada de la funcion','ingrese el valor de xi:', 'ingrese la tolerancia:','ingrese el numero maximo de iteraciones'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'5*exp(-x)-3*sin(x)+x','-5*exp(-x)-3*cos(x)+1','3','10^-6','100'};
per=inputdlg(prom,name,num,def);
xi=str2num(per{3});
tol=str2num(per{4});
n=str2num(per{5});
f=inline(per{1});
fp=inline(per{2});

    fx=f(xi);
    fpx=fp(xi);   
    i=0;
    error=tol+1;
    er='';
    fprintf('\n n         x        f(x)         fp(x)           E             er       \n')
    while  i<=n && fx~=0 && error>tol && fpx~=0
        fprintf('%1.0f %10.10f %10.10f %10.10f %10.10f %10.10f \n',i,xi,fx,fpx,error,er)
        x=xi-(fx/fpx);        
        fx=f(x);
        fpx=fp(x);        
        error=abs(x-xi);
        er=abs((x-xi)/x);
        xi=x;
        i=i+1;
    end

    
    if fx==0
        fprintf('\n La raíz es: %1.10f \n\n',xi)
      else if error<tol
            fprintf('\n %1.10f es una aproximacion a la raiz con un error maximo de %1.10f \n',xi,tol)
          else if fpx==0
               fprintf(' %1.10 es una posible raiz multiple.',xi)   
              else
               fprintf('\n El metodo fallo en %0.0f iteraciones \n\n',n)  
              end
          end
    end
    
       
    
        

 
          
            

    
    
        
    