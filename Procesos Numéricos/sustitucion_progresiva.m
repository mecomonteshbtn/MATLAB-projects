%Nos da la solucion de Ld=b

function X = sustitucion_progresiva(A,b)
n = length(A);
X = zeros(n,1);
for k = 1:n
    suma = 0;
    for i = 1:k-1
        suma = suma + A(k,i) * X(i);
    end
    X(k) = (b(k) - suma) / A(k,k);
end
end