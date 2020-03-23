function raicesmultiples2
clc;
clear;

prom={'ingrese la funcion','ingrese la derivada de la funcion','ingrese la segunda derivada','ingrese el valor de xi:', 'ingrese la tolerancia:','ingrese el numero maximo de iteraciones'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'5*exp(-x)-3*sin(x)+x','-5*exp(-x)-3*cos(x)+1','5*exp(-x)+3*sin(x)','3','10^-6','100'};
per=inputdlg(prom,name,num,def);
xi=str2num(per{4});
tol=str2num(per{5}); 
n=str2num(per{6});
f=inline(per{1});
fp=inline(per{2});
fpp=inline(per{3});

    fx=f(xi);
    fpx=fp(xi);
    fppx=fpp(xi);
    denominador=(fpx^2-fx*fppx);
    i=1;
    error=tol+1;
    er='';
    fprintf('\n n         x        f(x)         fp(x)         fpp(x)         E        er   \n')
    while  i<=n && fx~=0 && error>tol && denominador~=0
        fprintf('%1.0f %10.10f %10.10f %10.10f %10.10f %10.10f %10.10f \n',i,xi,fx,fpx,fppx,error,er)
        x=xi-(fx*fpx)/denominador;
        fx=f(x);
        fpx=fp(x);
        fppx=fpp(x);
        denominador=(fpx^2-fx*fppx);        
        error=abs(x-xi);
        er=abs((x-xi)/x);
        xi=x;
        i=i+1;
    end
    if fx==0
        fprintf('\n La raíz es: %1.10f \n\n',xi)
      else if error<tol
            fprintf('\n %1.10f es una aproximacion a la raiz con un error maximo de %1.10f \n',xi,tol)
        else
         fprintf('\n El metodo fallo en %0.0f iteraciones \n\n',n)  
           end
    end


 
 
 
  
 
  