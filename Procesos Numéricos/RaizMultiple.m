function raiz= RaizMultiple (x0,tol,it,f,df,df2)
%ezplot(f)
x=x0;
fx= eval(f);
dfx=eval(df);
dfx2=eval(df2);
contador=0;

I(contador + 1)=contador;
XO(contador + 1)=x0;
X1(contador + 1)=NaN;
F(contador + 1)=fx;
FP(contador + 1) = dfx;
FPP (contador + 1)= dfx2;
E(contador + 1)= NaN;

error=tol+1;
den = (((dfx)^2)-(fx*dfx2));
while (error>tol && fx~=0 && den~=0 && contador<it )
    x1= x0-((fx*dfx)/ den);
    x = x1;
    fx= eval(f);
    dfx=eval(df);
    dfx2=eval(df2);
    error=abs(x1-x0);
    XO(contador + 2)=x0;
    den = (((dfx)^2)-(fx*dfx2));
    x0=x1;
    contador= contador+1;
    
    I(contador + 1)=contador;
    X1(contador + 1)=x1;
    F(contador + 1)=fx;
    FP(contador + 1) = dfx;
    FPP (contador + 1)= dfx2;
    E(contador + 1)= error;
end

%fprintf('La tabla:\n');
fprintf(' It    Xo    X1    f(x)    f''(x)   f''''(x)  error\n');
[I'  XO'  X1' F' FP' FPP'  E']

if fx==0
    fprintf('%f es una raiz.\n',x0)
    raiz= x0;
elseif error<tol
    fprintf('%f es una aproximacion a una raiz con una tolerancia de %f.\n',x0,tol)
    raiz = x0;
elseif dfx ==0
    fprintf('%f es una posible raiz multiple.\n',x0)
    raiz=x0;
elseif dfx2==0
    fprintf('%f es una posible raiz multiple.\n',x0)
    raiz=x0;
else
    fprintf('fracaso en numero de iteraciones.\n')
    raiz=NaN;
end

end