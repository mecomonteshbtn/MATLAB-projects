%Despeja las x la matriz obtenida en la eliminacion anterior. solucion de Ux=d

function X = sustitucion_atras(A,b)
n = length(A);
X = zeros(n,1);
for k = n : -1 : 1
    suma = 0;
    for i = k + 1 : n
        suma = suma + A(k,i) * X(i);
    end
    X(k) = (b(k) - suma) / A(k,k);
end
end