%en lagrange el grado de la función siempres será el # de ptos menos 1
A0 + A1(x -xo) + A2(x-xo)*(x-x1) polinomio orden 2 Newton

%%%Euler Yi+1 = Yi+ f(ti,Yi)h  
%f(ti,Yi) es la función de y' despejada
h= b-a/N
A1= 1 - A2
P*A2= 1/2
Q*A2= 1/2
K1= f(ti,Yi)
K2= f(ti + p*h,Yi+Q*k1*h)
%En euler y rk la t son las x y la w las y
%En rk Y3= Y2 + (A1K1 + A2K2)h

%Simpson 3/8
3/8 (f(x0) +3*(fx1) + 3*f(x2) + f(x3))

%Simpson compuesto 1/3
S= f(xo) + 4*(f de impares) + 2+(f de pares) + f(xn)

%Simpson 1/3
s= f(a) + 4*(a+b/2) + f(b)

%Splines
1. s(xj) = f(xj)  el polinomio debe pasar por los puntos
2. Sj+1 (xj+1) = Sj (xj+1)  el polinomio es continuo
3. s'j+1 (xj+1) = s' j(xj+1)  suavizacion
4. S'' j+1 (xj+1) = S'' j(xj+1)

%Runge kutta
Yi+1= Yi+(a1*k1 + a2*k2)h
