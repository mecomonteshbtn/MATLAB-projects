function [f0,a0,b0,Tol0,N0]=Biseccion(f0,a0,b0,Tol0,N0);
    
    Entradas={'F(x) = ','a = ','b = ','Tol = ','N = '};
    Titulo='DATOS DE ENTRADA';
    Dimensiones=[4 1 1 1 1];
    Defaul={f0,a0,b0,Tol0,N0};
    e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);
    
    f0=e{1};
    a0=e{2};
    b0=e{3};
    Tol0=e{4};
    N0=e{5};

    F=inline(e{1});
    A=str2num(e{2});
    B=str2num(e{3});
    Tol=str2num(e{4});
    N=str2num(e{5});
    
    Y0=F(A);
    Y1=F(B);
    if (Y0==0)
       fprintf ('En A hay una raiz');
    else 
        if (Y1==0)
           fprintf ('En B hay una raiz');
        else
            if (N<=0)
              fprintf ('Revisar Numero de Iteraciones');
            else 

                 if (Y0*Y1)<0
                    Xanterior=A;
                    Y2=F(A);
                    Error=Tol+1;
                    n=0;
                    
                    fprintf('\n n       Xr         f(x)         Error ');
                    while (Y2~=0 && Error>Tol &&  n<=N)
                           n=n+1;
                           Xr=(A+B)/2;
                           Y0=F(A);
                           Y2=F(Xr);
                           Error=abs(Xr-Xanterior);
                           Xanterior=Xr;
                           fprintf('\n %g  %2.8f  %2.8f  %e ',n,Xr,Y2,Error);
                           
                           if (Y0*Y2)<0
                               B=Xr;
                           else 
                               A=Xr;
                           end 
                    end 

                    if (Y2==0)
                         fprintf('\n\n Hay una Raiz en Xr = %f',Xr);
                    else
                        if (Error < Tol)   
                         fprintf('\n\n X = %2.8f es una aproximación a la raiz con un error absoluto de %f ',Xr,Error);
                        else
                           fprintf ('\n\nFracasa por el número de Iteraciones');
                        end
                    end
                 else
                     fprintf('\n\n Revise Numero Iteraciones %f ',N);
                end   
            end
        end
    end
end