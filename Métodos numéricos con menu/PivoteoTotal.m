function [A0,B0]=PivoteoTotal(A0,B0);

  Entradas={'A=','b='};
  Titulo='DATOS DE ENTRADA';
  Dimensiones=[2 30;2 30];
  Defaul={A0,B0};
  e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);

  A0=e{1};
  B0=e{2};

  A=str2num(e{1});
  b=str2num(e{2});

  Ab=[A,b]
  [filas,columnas]=size(A); 
  n=filas;

  if filas==columnas
    if det(A)~=0
       for i=1:n
              marca(i)=i; 
                          
          end
          for k=1:(n-1)
              mayor=0; 
              filamayor=k; 
              columnamayor=k; 
              for p=k:n
                  for r=k:n
                      if mayor<abs(Ab(p,r)) 
                      mayor=abs(Ab(p,r)); 
                      filamayor=p;
                      columnamayor=r;
                      end
                  end
              end
              if filamayor~=k 
                  for j=1:(n+1)
                      aux=Ab(k,j);
                      Ab(k,j)=Ab(filamayor,j);
                      Ab(filamayor,j)=aux;
                  end
                 end
                  if columnamayor~=k 
                  for i=1:n
                      aux=Ab(i,k);
                      Ab(i,k)=Ab(i,columnamayor);
                      Ab(i,columnamayor)=aux;
                  end
                  aux=marca(k);
                  marca(k)= marca(columnamayor);
                  marca(columnamayor)=aux;
                  end
               end

      for k=1:1:n-1
        for i=k+1:1:n
          Multiplicador=Ab(i,k)/Ab(k,k);
          for j=k:1:n+1
            Ab(i,j)=Ab(i,j)-Multiplicador*Ab(k,j);
            end
        end
        Ab
      end
      Ab

      for i=n:-1:1 
        suma=0;
        for j=i+1:1:n
          suma=suma+Ab(i,j)*x(j);
          end
        x(i)=(Ab(i,columnas+1)-suma)/Ab(i,i);
        end

               for i=1:n
                   for j=1:n
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
           
      for i=1:n
          fprintf('\n X%g = %4.8f',i,x(i))
      end 
    else
      fprintf('\n El determinante de la matriz A es 0, asi que el sistema no tiene solucion unica \n')
    end
  else
    fprintf('\n La matriz A no es cuadrada y por ello el sistema no posee solucion unica \n')
  end
  
end
