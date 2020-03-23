function [A0,B0]=Cholesky(A0,B0); 
  
    
    Entradas={'A=','b='};
    Titulo='DATOS DE ENTRADA';
    Dimensiones=[2 30;2 30];
    Defaul={A0,B0};
    e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);
    
    A0=e{1};
    B0=e{2};
    
    A=str2num(e{1});
    b=str2num(e{2});
    
    [n,m]=size(A);
    L=eye(n);
    U=eye(n);
    disp('')

    for k=1:n
        Suma1=0;
        for p=1:k-1
            Suma1=Suma1+L(k,p)*U(p,k);
        end
        L(k,k)=(A(k,k)-Suma1)^0.5;
        U(k,k)=L(k,k);
        for i=k+1:n
            Suma2=0;
            for p=1:k-1
                Suma2=Suma2+L(i,p)*U(p,k);
            end
            L(i,k)=(A(i,k)-Suma2)/U(k,k);
        end
        for j=k+1:n
            Suma3=0;
            for p=1:k-1
                Suma3=Suma3+L(k,p)*U(p,j);
            end
            U(k,j)=(A(k,j)-Suma3)/L(k,k);
        end
    end

    L,U
    A=L*U;
    
    %%Sustitucion progresiva
    Z=zeros(n,1);
    Lb=[L,b];
    for i=1:n
        Sumatoria=0;
        for p=1:i-1
            Sumatoria=Sumatoria+Lb(i,p)*Z(p);
        end
        Z(i)=(Lb(i,n+1)-Sumatoria)/Lb(i,i);
    end
    fprintf('\n Valores de Z:\n');
    for i=1:n
        fprintf('\n Z%g = %4.8f',i,Z(i))
    end      
    %Sustitucion Regresiva
    X=zeros(n,1); 
    UZ=[U,Z];
    for i=n:-1:1
        Sumatoria=0;
        for p=i+1:n
            Sumatoria=Sumatoria+UZ(i,p)*X(p);
        end
        X(i)=(UZ(i,n+1)-Sumatoria)/UZ(i,i);
    end
    fprintf('\n\n Valores de X:\n');
    for i=1:n
        fprintf('\n X%g = %4.8f',i,X(i))
    end 
end