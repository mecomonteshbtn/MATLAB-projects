function  newpoly 
clc
clear

prom={'ingrese los x','ingrese los y'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'0','0'};
per=inputdlg(prom,name,num,def);
X=str2num(per{1});
Y=str2num(per{2});

n = length(X);
D = zeros(n, n);
D(:, 1) = Y';

for  j = 2:n
   for  k = j:n
      D(k, j) = (D(k, j-1) - D(k-1, j-1)) / (X(k) - X(k-j+1));
   end
end

C = D(n, n);

for  k = (n-1):-1:1
   C = conv(C, poly(X(k)));
   m = length(C);
   C(m) = C(m) + D(k, k);
end
C, D
end
