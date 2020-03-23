clc;
clear all;

disp(' ')%dejar un renglón en blanco
disp(' ')%dejar un renglón en blanco
disp('Ejercicio 1')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

a=input('Ingrese el valor de a: ');%Se pide ingresar el valor
n=input('Ingrese el valor de n: ');%Se pide ingresar el valor

suma=0;%acumulador

for i=1:n%ciclo iterativo
    suma=suma+a^(1/i);
end

suma%muestra el resultado final de la serie

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(' ')%dejar un renglón en blanco
disp(' ')%dejar un renglón en blanco
disp('Ejercicio 2')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco

Secreto=randi([1,10],1);%crear el numero entero aleatorio entre 1 y 10
Numero=0;

while Numero~=Secreto%ciclo condicionado
    Numero=input('Ingrese un numero: ');%Se pide ingresar el valor
    
    if Numero>Secreto%condicional
        disp('Ingrese un numero menor');%mostrar el texto que esta entre comillas en la pantalla
    elseif Numero<Secreto%condicional
        disp('Ingrese un numero mayor');%mostrar el texto que esta entre comillas en la pantalla
    else%condicional
        disp('Felicidades, adivinaste el numero!');%mostrar el texto que esta entre comillas en la pantalla
    end
end        

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(' ')%dejar un renglón en blanco
disp(' ')%dejar un renglón en blanco
disp('Ejercicio 3')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco
n='S';
Acumulado=0;

while n=='S'%ciclo condicionado
    Valor=randi([1,12],1);%crear el numero entero aleatorio entre 1 y 10
    Acumulado=Acumulado+Valor%suma los valores obtenidos hasta el momento
    
    if Acumulado==21%condicional
        disp('Felicidades, Ganaste!')%mostrar el texto que esta entre comillas en la pantalla
    elseif Acumulado<21%condicional
        n=input('Desea contunuar en el juego S/N?: ','s');%Se pide ingresar el valor
    else%condicional
        disp('Te pasaste de 21, Perdiste!')%mostrar el texto que esta entre comillas en la pantalla
        n='N';
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(' ')%dejar un renglón en blanco
disp(' ')%dejar un renglón en blanco
disp('Ejercicio 4')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco    

Ingresos=input('Cuales son sus ingresos anuales? ');%Se pide ingresar el valor
Estado=input('Su estado civil es casado S/N?: ','s');%Se pide ingresar el valor
Hijos=input('Tiene hijos S/N?: ','s');%Se pide ingresar el valor

if Ingresos>=35000000%condicional
   disp('Se te concede el credito!')%mostrar el texto que esta entre comillas en la pantalla 
elseif Ingresos<35000000 && Ingresos>=16000000 && Estado=='N'%condicional
   disp('Se te concede el credito!')%mostrar el texto que esta entre comillas en la pantalla 
elseif Ingresos<=25000000 && Ingresos>=20000000 && Estado=='S' && Hijos=='N'%condicional
   disp('Se te concede el credito!')%mostrar el texto que esta entre comillas en la pantalla 
else%condicional
    disp('No se te concede el credito!')%mostrar el texto que esta entre comillas en la pantalla 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(' ')%dejar un renglón en blanco
disp(' ')%dejar un renglón en blanco
disp('Ejercicio 5')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco 

Matriz=zeros(5,3);

for j=1:5
    a=input('Ingrese el valor de a: ');%Se pide ingresar el valor
    n=input('Ingrese el valor de n: ');%Se pide ingresar el valor

    suma=0;%acumulador

    for i=1:n%ciclo iterativo
        suma=suma+a^(1/i);
    end

    Matriz(j,1)=a;%Almaceno el valor de a en la matriz
    Matriz(j,2)=n;%Almaceno el valor de n en la matriz
    Matriz(j,3)=suma;%Almaceno el valor de la serie en la matriz
end

Matriz%muestra el resultado final de la Matriz

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(' ')%dejar un renglón en blanco
disp(' ')%dejar un renglón en blanco
disp('Ejercicio 6')%mostrar el texto que esta entre comillas en la pantalla
disp(' ')%dejar un renglón en blanco 

A=[2 1 2;0 4 4;4 0 0]%matriz A
B=[1 -1 1;2 2 -3;1 -7 5]%matriz B

X=A*B*inv(A)%matriz X