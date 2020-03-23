clear
clc
fprintf('ELIMINACION DE GAUSS CON PIVOTEO\n\n')
fprintf('este programa permite hallar las soluciones de un sistema de ecuaciones lineales.\n\n')
a1=input('digite la matriz A \n')
b=input('digite el vector de soluciones b \n')
det=1;
r=0;
i=1;
a=a1;
n=size(a);
n=n(1,1);
for i=1:(n-1)
    pivote=max(abs(a(:,i)));
    jj=1;
    fi=i;
    while jj<=n
        if pivote==abs(a(jj,i));
            p=jj;
        end
        jj=jj+1;
    end
    if pivote==0
        fprintf('matriz singular, sistema sin solucion')
        break
    end
    if p~=i;
        copia=a(i,:);
        a(i,:)=a(p,:);
        a(p,:)=copia;
        c=b(i);
        b(i)=b(p);
        b(p)=c;
        r=r+1;
    end
    det=det*a(i,i);
    k=i+1;
    while k<=n
       j=i+1;
       while j<=n
                a(k,j)=a(k,j)-a(k,i)*a(i,j)/a(i,i);
                j=j+1;
       end
       b(k)=b(k)-a(k,i)*b(i)/a(i,i);
       k=k+1;
    end
    i=i+1;
end
det=det*a(n,n)*(-1)^r;
x(n)=b(n)/a(n,n);
i=n-1;
while i>=1
    x(i)=b(i);
    j=i+1;
    while j<=n
        x(i)=x(i)-a(i,j)*x(j);
        j=j+1;
    end
    x(i)=x(i)/a(i,i);
    i=i-1;
end
det
x=x'