function [f0,N0]=Busquedas(f0,N0);

    Entradas={'F(x) = ','X0 = ','Delta = ','N = '};
    Titulo='DATOS DE ENTRADA';
    Dimensiones=[4 1 1 1];
    Defaul={f0,'-10','0.001',N0};
    e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);
    
    f0=e{1};
    N0=e{4};

    F=inline(e{1});
    X0=str2num(e{2});
    Delta=str2num(e{3});
    N=str2num(e{4});
    
    Y0=F(X0);
    if (Y0==0)
      fprintf('En X0 hay una raiz');
    else 
        if (Delta ~=0)
            if (N>0)
                X1=X0+Delta;
                Y1=F(X1);
                n=0;
                while Y0*Y1>0 && Y1~=0 && n<N
                    n=n+1;
                    X0=X1; 
                    Y0=Y1;
                    X1=X0+Delta;
                    Y1=F(X1);   
                    if Y1==0
                        fprintf('\n Hay una Raiz en X = %f ',X1);
                    elseif Y0*Y1<0 
                     fprintf('\n Lafuncion tiene una raiz en el intervalo [ %f , %f ]',X0,X1);
                    end
                end
                if n>=N
                   fprintf ('Fracasa por el número de Iteraciones');
                end
            else
                fprintf('\n Revise Numero Iteraciones %f ',N);
            end
        else
            fprintf('\n Escriba el número de Delta Correcto %f',Delta);
        end
    end
end