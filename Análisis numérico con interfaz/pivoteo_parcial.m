clc;
clear all;

prom={'matriz A','matriz b'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'[10 0 -3;4 13 -2;5 6 -12]','[1;-2;3]'};
per=inputdlg(prom,name,num,def);
A=str2num(per{1});
b=str2num(per{2});
Ab=[A,b]%%matriz aumentada con el vector b traspuesto
[filas,columnas]=size(A); %% dice el orden de la matriz

    for k=1:(filas-1)
        mayor=0; 
        filam=k; 
        for p=k:filas%%etapa para buscar el valor mayor de la columna
            if mayor<abs(Ab(p,k));
                mayor=abs(Ab(p,k));
                filamayor=p; 
            end
        end
        if filamayor~=k %%etapa que intercambia la fila del pivote con la fila que contiene el mayor
            for j=1:(filas+1)
                aux=Ab(k,j); 
                Ab(k,j)=Ab(filamayor,j);
                Ab(filamayor,j)=aux;
            end
            end
        end
for k=1:1:columnas-1%% comienza desde la fila 2, porque en esta es que comienzan a aparecer los 0
	for i=k+1:1:filas
		Multiplicador=Ab(i,k)/Ab(k,k);
		for j=k:1:columnas+1
			Ab(i,j)=Ab(i,j)-Multiplicador*Ab(k,j);
			end
		end
	end
Ab

%% desde aqui el origgrama comienza a ahcer sustitucion regresiva, para hallas los valores de x
for i=filas:-1:1 %% ALGORITMO DE RESOLUCION DE ABAJO HACIA ARRIBA
	suma=0;
	for j=i+1:1:columnas
		suma=suma+Ab(i,j)*x(j);
		end
	x(i)=(Ab(i,columnas+1)-suma)/Ab(i,i);
	end

for i=1:filas%%muestra los resultados uno por uno
    xi=x(1,i);
    fprintf('\nX%g=',i)
    disp(xi);
end      