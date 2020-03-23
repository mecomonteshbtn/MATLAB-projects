function [A0,B0]=PivoteoParcial(A0,B0);

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
      for k=1:(n-1)
          mayor=0; 
          filamayor=k; 
           
          for p=k:n
              if abs(Ab(p,k))> mayor
                mayor=abs(Ab(p,k)); 
                filamayor=p;
              end
          end
          if filamayor~=k 
              for j=1:(n+1)
                  aux=Ab(k,j);
                  Ab(k,j)=Ab(filamayor,j);
                  Ab(filamayor,j)=aux;
              end
          end
      end

      for k=1:1:n-1
        for i=k+1:1:n
          Multiplicador=Ab(i,k)/Ab(k,k)
          for j=k:1:n+1
            Ab(i,j)=Ab(i,j)-Multiplicador*Ab(k,j);
            end
          end
          Ab
        end
      


      for i=n:-1:1 
        suma=0;
        for j=i+1:1:n
          suma=suma+Ab(i,j)*x(j);
          end
        x(i)=(Ab(i,columnas+1)-suma)/Ab(i,i);
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