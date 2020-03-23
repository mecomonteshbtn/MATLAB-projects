function SOR

clc  
clear  

prom={'matriz A','matriz b','ingrese el x0','factor de relajacion','ingrese la tolerancia'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'[10 0 -3;4 13 -2;5 6 -12]','[1;-2;3]','[0;0;0]','0.1','10^-6'};
per=inputdlg(prom,name,num,def);
A=str2num(per{1});
b=str2num(per{2});
x0=str2num(per{3});
w=str2num(per{4});
tol=str2num(per{5});
n=length(b);
paro=0;

determinante=det(A);%se calcula el determinante de la matriz de coeficiente
if determinante~=0

    d=diag(diag(A)); %obtencion de la matriz diagonal
    l=d-tril(A); %obtencion de la matriz diagonal superior L
    u=d-triu(A);%obtencion de la matriz diagonal inferior u
    fprintf('\n     SOLUCION:\n')
    fprintf('\nLa matriz de transicion de jacobi:\n')
    T=(d-w*l)^(-1)*((1-w)*d+w*u);% matriz de transicion de jacobi
    disp(T)
    re=max(abs(eig(T))) %calculo del radio espectral

    fprintf('\nLa matriz constante es::\n')
    C=w*(d-w*l)^(-1)*(b);% vector constante C, para el metodo 
    disp(C)
    i=1;
    error=tol+1;
    
    fprintf(' i\f');
    for p=1:1:n
    fprintf('       X%g  \f ', p);
    end
    
    fprintf('    Error');

    while error>tol & re<1
        x=T*x0+C;    
        error=norm(x-x0);
        fprintf('\n %g    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f    %f\n',i,x',error);
        i=i+1;
        x0=x;   
    end

if error<tol
    fprintf('\n\n\n ');
    disp('La solucion es: ')
    x
    fprintf('Es una solucion aproximada con una tolerancia %1.10f encontrada en %1.0f iteraciones. \n',tol,i)
elseif re>=1
    disp('Radio Espectral mayor que 1')
    disp('el método diverge')
elseif determinante==0
    disp('El determinante es cero, el problema no tiene solución única')
end
end