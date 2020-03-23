function [X, z] = sol_factorizacion(A,m)
%Utilizar la factorizacion deseada a continuacion:
[L,U]=factorizacion_crout(A)
for I= 1:m
b = input('Ingrese b\n');
z = sustitucion_progresiva(L,b);
x = sustitucion_atras(U,z);
if (I == 1)
	X = x;
else
	X = [X x];
end
end
end