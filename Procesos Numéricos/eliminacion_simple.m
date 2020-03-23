% Eliminacion gaussiana, convierte la matriz a una matriz triangular.

function [X,A,b] = eliminacion_simple(A,b)
n=length(A);
for k=1:n-1
 %Se hace la eliminacion gaussiana
    for j= k+1:n
        m(j,k)=-(A(j,k)/A(k,k));
        A(j,:)=(m(j,k)*(A(k,:)))+A(j,:);
        b(j)=(m(j,k)*b(k))+b(j);
	%A(k,:)son los de la diagonal ejemplo: F2-lamdaF1=F2
    end
    fprintf('Luego de la eliminacion en la columna %d Ab es:\n', k);
    disp([A, b]);
end
%Se llama el programa de sustitucion hacia atras para despejar las X.
X = sustitucion_atras(A, b);
end
