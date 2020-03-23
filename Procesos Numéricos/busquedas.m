function [li, ls]= busquedas(x0,delta,it,f)
%ezplot(f)
x=x0;
fx0=eval(f);

I(1) = 1;
X(1) = x0;
F(1) = fx0;

if fx0== 0
    fprintf('%f es una raiz.\n',x0);
    li = x0;
    ls = x0;
else
    x1=x0+delta;
    x=x1;
    fx1= eval(f);
    contador= 1;
    
    I(contador + 1) = contador + 1;
    X(contador + 1) = x1;
    F(contador + 1) = fx1;
    
    while (fx0*fx1>0 && contador <=it)
        x0=x1;
        fx0=fx1;
        x1= x0+delta;
        x = x1;
        fx1=eval(f);
        contador= contador+1;
        
        I(contador + 1) = contador + 1;
        X(contador + 1) = x1;
        F(contador + 1) = fx1;
        
    end
	%fprintf('La tabla:\n');
fprintf(' it   x0   f.\n');
    [I' X' F']
    if fx1==0
        fprintf('%f es una raiz.\n',x0)
        li = x0;
        ls = x0;
    elseif fx0*fx1<0
        fprintf('Hay una raiz entre %g y %g.\n', x0, x1)
        li = x0;
        ls = x1;
    else
        fprintf('Fracaso en numero de iteraciones.\n')
        li = NaN;
        ls = NaN;
    end
end

end