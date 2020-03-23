function [A0,B0,xi0,w0,Tol0,N0]=SORGauss(A0,B0,xi0,w0,Tol0,N0);

    Entradas={'A=','b=','X0=','Tol=','N=','w='};
    Titulo='DATOS DE ENTRADA';
    Dimensiones=[2 30;2 30;1 30;1 30;1 30;1 30];
    Defaul={A0,B0,xi0,w0,Tol0,N0};
    e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);

    A0=e{1};
    B0=e{2};
    xi0=e{3};
    w0=e{4};
    Tol0=e{5};
    N0=e{6};

    A=str2num(e{1});
    b=str2num(e{2});
    x0=str2num(e{3});
    Tol=str2num(e{4});
    N=str2num(e{5});
    w=str2num(e{6});

    [n,m]=size(A);
    Error=Tol+1;
    i=0;

    if n==m
       if det(A)~=0
           D=diag(diag(A))
           L=D-tril(A)
           U=D-triu(A)

           T=inv(D-w*L)*((1-w)*D+w*U)
           C=w*inv(D-w*L)*b

           Valores_propios_T=eig(T)
           Radio_espectral=max(abs(eig(T)))

           if Radio_espectral<1
               while Error>Tol && i<=N
                   i=i+1;
                   x=T*x0+C;
                   Error=norm(x-x0);
                   fprintf(' |  i = %g  |',i);
                   for j=1:n
                       fprintf('  X%g = %f  |',j,x(j));
                   end
                   fprintf('  Error = %e  |\n',Error);
                   x0=x;
               end
           else
               disp('El método diverge porque el Radio espectral es mayor a 1')
           end
       else
           disp('el sistema no tiene soluciòn porque el determinante de A es 0')
       end
    else
        disp('la matriz A no es cuadrada así que no posee ùnica solución')
    end
end