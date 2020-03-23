%NORMA 2-------norm(A)
A*A'
eig(ans)
sqrt(ans)
se coje el mayor numero

%NORMA 1------norm(A,1)
suma de columnas
se coje A1=max(suma col)

%NORMA INF----- norm(A, inf)
Ainf= max(sumatoria val. abs de cada fila)

%RADIO ESPECTRAL---- es el max de los valores propios de T)

eig(Aans(1)*ans(2)
sqrt(ans)
%NUMERO DE CONDICION(K)norm(A)* norm(inv(A))
norm(inv(A),1)*(norm(A,1)) este es con la norma 1.... para norma 2 es norm(A)
luego se saca log10(ans)---- digitos sospechosos(cs)
%EDD
cada valor de la diagonal es mayor a la sumatoria de los val abs de su fila correspondiente.
%INVERSA DE A
A*A(-1)= I
LU=I DA LA INVERSA DE A 
L ES MATRIZ SUPERIOR(CEROS ARRIBA)
U ES INFERIOR(CEROS ABAJO)

Tj=inv(D) (L+U)
Cj= inv(D) * b
Tg= inv(D-L) * U
Cg= inv(D-L) * b
