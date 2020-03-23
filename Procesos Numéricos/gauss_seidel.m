function x= gauss_seidel(A,b,N,tol,X0)
x=zeros;
n=length(A);
k=1;
tablaX = [k , X0'];
Error = [NaN];
while( k<=N)
    for i=1:n
	x(i,1)=(-A(i,[1:i-1])*x([1:i-1],1)-A(i,[i+1:n]) *X0([i+1:n],1)+b(i,1))/A(i,i);
    end
    Er=norm(x-X0)/norm(x);
    
    X0=x;
    k=k+1;
    tablaX = [tablaX; [k, x']];
    Error = [Error ; Er];  
    if Er<tol
        break;
    end
end
 MatrizFinal= [tablaX, Error]
end