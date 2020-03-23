function [X,A,b]=eliminacion_con_pivoteo(A,b)
n=length(A);
for k=1:n-1
    [A, b] = pivoteo_parcial(A, b, k, n);
    fprintf('Luego del %d-esimo intercambio Ab es:\n', k);
    disp([A, b]);
    for j= k+1:n
        m(j,k)=-(A(j,k)/A(k,k));
        A(j,:)=(m(j,k)*(A(k,:)))+A(j,:);
        b(j)=(m(j,k)*b(k))+b(j);
    end
end
fprintf('La matriz final es:\n');
disp([A, b]);
X = sustitucion_atras(A, b);
end

function [A, b]= pivoteo_parcial(A,b, k, n)
mayor = abs(A(k,k));
fm=k;
for s=k+1:n
    if abs(A(s,k))> mayor
        mayor=abs(A(s,k));
        fm=s;
    end
end
if mayor==0
    fprintf('El sistema no tiene solucion unica');
elseif fm~=k
    [A, b] = intercambiar_filas(A, b, fm, k);
end
end

%intercambio de filas
function [A, b] = intercambiar_filas(A, b, i, j)
auxA = A(i, :);
A(i, :) = A(j, :);
A(j, :) = auxA;
auxB = b(i);
b(i) = b(j);
b(j) = auxB;
end



