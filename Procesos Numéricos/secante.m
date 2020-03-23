function raiz= secante (tol,x0,x1,it,f)
%ezplot(f);
x=x0;
fx0= eval(f);
if fx0==0
    raiz=x0;
    fprintf('%f es una raiz.\n',x0)
    return
end
x=x1;
fx1= eval(f);
contador=0;

I(contador + 1)=contador;
XO(contador + 1)=x0;
X1(contador + 1)=x1;
X2(contador + 1)=NaN;
F1(contador + 1)=fx1;
F2 (contador + 1) = NaN;
E(contador + 1)= NaN;

error= tol+1;
den=fx1-fx0;

while (error>tol && fx1~=0 && den~=0 && contador<it)
    x2 = x1-fx1*(x1-x0)/den;
    error =abs(x2-x1);
    
    XO(contador + 2)=x0;
    x0=x1;
    fx0=fx1;
    
    X1(contador + 2)=x1;
    F1(contador + 2)=fx0;
    x1=x2;
    x = x1;
    fx1= eval(f);
    den= fx1-fx0;
    contador= contador+1;
    
    I(contador + 1)=contador;    
    X2(contador + 1)=x2;
    F2(contador + 1)=fx1;
    E(contador + 1)= error;
end
%fprintf('La tabla:\n');
fprintf(' it  xo  x1  x2  fx1  fx2  error.\n');
disp([I'  XO'  X1'  X2'  F1' F2'  E'])

if fx1==0
    fprintf('%f es una raiz.\n',x1)
    raiz = x1
elseif error<tol
    fprintf('%f es una aproximacion a una raiz con una tolerancia de %f.\n',x1,tol)
elseif den== 0
    fprintf('hay una posible raiz multiple')
else
    fprintf('Fracaso por numero de iteraciones')
end
end
