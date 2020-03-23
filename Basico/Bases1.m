clc;   %limpiar la pantalla
clear all;%borra la memoria

disp(' ')%dejar un renglón en blanco
disp('        Autores ')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco
disp('     Elizabeth Hoyos')%mostrar el texto que esta entre comillas en la pantalla
disp('   Maria Antonia Suarez')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco
disp(' ')%dejar un renglón en blanco

syms a b c d w x y z %designar las letras como variables simbolicas

disp('        Punto 1')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

expresion1=(x^2-3*x)/(x^2+3*x);%primera aexpresión matemática
disp('Expresion 1 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
pretty(expresion1)%mostrar el resultado en pantalla en formato matemático bonito
simplificacion1=simplify(expresion1);%simplifica la expresión1
disp('Expresion 1 simplificada')%mostrar el texto que esta entre comillas en la pantalla
pretty(simplificacion1)%mostrar el resultado en pantalla en formato matemático bonito

expresion2=(x+(x/(x-1)))/(x-(x/(x-1)));%segunda aexpresión matemática
disp('Expresion 2 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
pretty(expresion2)%%mostrar el resultado en pantalla en formato matemático bonito
simplificacion2=simplify(expresion2);%simplifica la expresion2
disp('Expresion 2 simplificada')%mostrar el texto que esta entre comillas en la pantalla
pretty(simplificacion2)%mostrar el resultado en pantalla en formato matemático bonito

expresion3=(x/(1+(1/(1+1/x))));%tercera aexpresión matemática
disp('Expresion 3 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
pretty(expresion3)%%mostrar el resultado en pantalla en formato matemático bonito
simplificacion3=simplify(expresion3);%simplifica la expresion3
disp('Expresion 3 simplificada')%mostrar el texto que esta entre comillas en la pantalla
pretty(simplificacion3)%mostrar el resultado en pantalla en formato matemático bonito


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 2')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

expresion1=(a+b)^4;%primera aexpresión matemática
disp('Expresion 1 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
pretty(expresion1)%mostrar el resultado en pantalla en formato matemático bonito
simplificacion1=expand(expresion1);%expande la expresion (productos notables)
disp('Expresion 1 simplificada')%mostrar el texto que esta entre comillas en la pantalla
pretty(simplificacion1)%mostrar el resultado en pantalla en formato matemático bonito

expresion2=(w+x+y+z)^2;%segunda aexpresión matemática
disp('Expresion 2 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
pretty(expresion2)%%mostrar el resultado en pantalla en formato matemático bonito
simplificacion2=expand(expresion2);%expande la expresion (productos notables)
disp('Expresion 2 simplificada')%mostrar el texto que esta entre comillas en la pantalla
pretty(simplificacion2)%mostrar el resultado en pantalla en formato matemático bonito

expresion3=(a*b+c*d)^2*(a*d-b*c)^2;%tercera aexpresión matemática
disp('Expresion 3 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
pretty(expresion3)%%mostrar el resultado en pantalla en formato matemático bonito
simplificacion3=expand(expresion3);%expande la expresion (productos notables)
disp('Expresion 3 simplificada')%mostrar el texto que esta entre comillas en la pantalla
pretty(simplificacion3)%mostrar el resultado en pantalla en formato matemático bonito


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 3')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

expresion1=(x-1)*(x+1)*(x+3)*(x-7);%primera aexpresión matemática
disp('Factores del polinomio')%mostrar el texto que esta entre comillas en la pantalla
pretty(expresion1)%mostrar el resultado en pantalla en formato matemático bonito
polinomio=expand(expresion1);%expande la expresion (productos notables)
disp('Polinomio')%mostrar el texto que esta entre comillas en la pantalla
pretty(polinomio)%mostrar el resultado en pantalla en formato matemático bonito
factor1=simplify(polinomio/(x-1));%simplifica la expresión1
disp('Demostracion del factor x-1')%mostrar el texto que esta entre comillas en la pantalla
pretty(factor1)%mostrar el resultado en pantalla en formato matemático bonito
factor2=simplify(polinomio/(x+1));%simplifica la expresión1
disp('Demostracion del factor x+1')%mostrar el texto que esta entre comillas en la pantalla
pretty(factor2)%mostrar el resultado en pantalla en formato matemático bonito


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 4')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

disp('Expresion 1 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
expresion1='1-2*(1+3*x-2*(x+2)+3*x)==-1'%primera aexpresión matemática
disp('solucion: ')%mostrar el texto que esta entre comillas en la pantalla
x1=solve(expresion1,x)%soluciona la ecuación en la expresión1 despejando x

disp('Expresion 2 oriiginal')%mostrar el texto que esta entre comillas en la pantalla
expresion2='exp(2*x+4)==5'%segunda aexpresión matemática
disp('solucion: ')%mostrar el texto que esta entre comillas en la pantalla
x2=solve(expresion2,x)%soluciona la ecuación en la expresión1 despejando x


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 5')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

xi=-5:0.1:5;
fx=xi./(1-3.*xi);
plot(xi,fx)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 6')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

A1=[2 -1 2;3 2 -1;4 3 -3]
b1=[6;4;1]

sol1=inv(A1)*b1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 7')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

A2=[2 5 -3 1 -1;-1 2 -2 2 -1;1 10 -4 -1 -1;3 -3 5 7 -2;8 7 -3 4 -5]
b2=[14;3;45;27;26]

sol2=inv(A2)*b2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 8')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

A=[0 5 9;1 7 4;0 8 6]%MATRIZ A
B=[8 5 3;9 6 0;4 8 2]%MATRIZ B

Suma=A+B%OPERACIÓN SUMA
Resta=A-B%OPERACIÓN RESTA
Multiplicacion=3*(B*A)'%RESOLVER LA OPERACIÓN
determinante=det((A*inv(B))^3)%DETERMINANTE DE LA MATRIZ


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 9')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

A=[1 0 1;0 1 0;0 0 1]%MATRIZ A
I=[1 0 0;0 1 0;0 0 1]%MATRIZ IDENTIDAD

Operacion=A^2-A-2*I%RESOLVER LA OPERACIÓN

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('        Punto 10')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

A=[1 1;3 4]%MATRIZ A
B=[4 1;7 0]%MATRIZ B
C=[3 2;5 8]%MATRIZ A

X=2*C*inv(A*B-C)%ENCONTRAR X