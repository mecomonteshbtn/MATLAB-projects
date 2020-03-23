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

 for i=1:columnas
        marca(i)=i; 
                    
    end
    for k=1:(columnas-1)
        mayor=0; 
        filamayor=k; 
        columnamayor=k; 
        for p=k:columnas%etapa que busca el valor mayor en la matriz o submatriz
            for r=k:columnas
                if mayor<abs(Ab(p,r)) 
                mayor=abs(Ab(p,r)); 
                filamayor=p;
                columnamayor=r;
                end
            end
        end
        if filamayor~=k 
            for j=1:(filas+1)
                aux=Ab(k,j);%%estoy guardando el mayor valor de la ma
                Ab(k,j)=Ab(filamayor,j);%% intercambio de filas 
                Ab(filamayor,j)=aux;
            end
           end
            if columnamayor~=k 
            for i=1:columnas
                aux=Ab(i,k);
                Ab(i,k)=Ab(i,columnamayor);
                Ab(i,columnamayor)=aux;
            end
            aux=marca(k);
            marca(k)= marca(columnamayor);
            marca(columnamayor)=aux;
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

         for i=1:columnas % organiza los resultados en x segun la matriz de marca
             for j=1:columnas
                 if marca(j)==i
                     k=j;
                 end
             end
             aux=x(k);
             x(k)=x(i);
             x(i)=aux;
             aux=marca(k);
             marca(k)=marca(i);
             marca(i)=aux;
         end
		 
for i=1:filas%%muestra los resultados uno por uno
    xi=x(1,i);
    fprintf('\nX%g=',i)
    disp(xi);
end 