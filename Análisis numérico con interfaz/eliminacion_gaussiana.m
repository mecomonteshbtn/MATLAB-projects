function eliminacion_gaussiana
clc
clear

prom={'matriz A','matriz b'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'[10 0 -3;4 13 -2;5 6 -12]','[1;-2;3]'};
per=inputdlg(prom,name,num,def);
A=str2num(per{1});
b=str2num(per{2});
Ab=[A b];
n=length(b);

for k=1:(n-1)
        for i=k+1:n
            mult=Ab(i,k)/Ab(k,k);
            fprintf('%3.5f es el multiplicado m%0.0f%0.0f \n',mult,k,i)
            for j=k:(n+1)
                Ab(i,j)=Ab(i,j)-mult*Ab(k,j);
            end
            disp(Ab)
        end
end
disp('La matriz triangular superior resultante es:') 
disp(Ab)

x(n)=Ab(n,n+1)/Ab(n,n);

for i=n:-1:1
    sumatoria=0;
    for p=(i+1):n
        sumatoria=sumatoria+Ab(i,p)*x(p);
    end
    x(i)=(Ab(i,n+1)-sumatoria)/Ab(i,i);
end

for i=1:n%%muestra los resultados uno por uno
    xi=x(1,i);
    fprintf('\nX%g=',i)
    disp(xi);
end     

