function raiz= ptofijo(tol,xa,it,f,g)
x=xa;
fx=eval(f);
contador=0;
error=tol+1;
while (fx~=0 && error>tol && contador <it)
    XA(contador + 1) = xa;
    x=xa;
    xn=eval(g);
    x=xn;
    fx=eval(f);
    error=abs(xn-xa);
    xa=xn;
    contador=contador+1;   
    
    XN(contador) = xn;    
    FXN(contador) = fx;
    E(contador) = error;
    
end
I = 1 : contador;
fprintf('     Iter          Xant         Xact        F(Xact)          Error\n');
disp([I' XA' XN' FXN' E']);
if fx==0
    fprintf('%g es raiz.\n',xa)
    raiz=xa;
elseif error<=tol
    fprintf('%g es una aproximacion a una raiz con una tolerancia de %g.\n',xa,tol)
    raiz=xa;
else
    fprintf('Fracaso por numero de iteraciones.\n')
    raiz=Inf;
end
end
