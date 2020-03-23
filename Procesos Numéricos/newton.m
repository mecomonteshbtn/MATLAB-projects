function raiz= newton (x0,tol,it,f,df)
%ezplot(f)
x=x0;
fx= eval(f);
dfx=eval(df);
contador=0;

I(contador + 1)=contador;
XO(contador + 1)=x0;
X1(contador + 1)=NaN;
FP(contador + 1)=fx;
E(contador + 1)= NaN;

error=tol+1;
while (error>tol && fx~=0 && dfx~=0 && contador<it)
    x1= x0-((fx)/(dfx));
    x = x1;
    fx= eval(f);
    dfx=eval(df);
    error=abs(x1-x0);
    XO(contador + 2)=x0;
    x0=x1;
    contador= contador+1;
    
    I(contador + 1)=contador;    
    X1(contador + 1)=x1;
    FP(contador + 1)=fx;
    E(contador + 1)= error;
end


%fprintf('La tabla:\n');
fprintf('       xo         x1         fx         error.\n');
[I'  XO'  X1'  FP'  E']

if fx==0
    fprintf('%f es una raiz.\n',x0)
    raiz= x0;
elseif error<tol
    fprintf('%f es una aproximacion a una raiz con una tolerancia de %f.\n',x0,tol)
    raiz = x0;
elseif dfx ==0
    fprintf('%f es una posible raiz multiple.\n',x0)
    raiz=x0;
else
    fprintf('fracaso en numero de iteraciones.\n')
    raiz=NaN;
end

end