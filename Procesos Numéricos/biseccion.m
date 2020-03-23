function raiz = biseccion (f,a,b,tol,it)
% ezplot(f)
x = a;
fa=eval(f);
if fa==0
  raiz=a;
  fprintf('%f es una raiz.\n', raiz);
  return;
end
x = b;
fb=eval(f);
if fb==0
  raiz=b;
  fprintf('%f es una raiz.\n', raiz);
  return;
end


if fa*fb<0;
  c=(a+b)/2;
  x = c;
  fc=eval(f);
 if fc==0
	raiz=c;
	fprintf('%f es una raiz.\n', raiz);
	return;
end
I(1) = 1;
A(1) = a;
B(1) = b;
C(1) = c;
FC(1) = fc;
E(1) = NaN;
cont = 1;
error=tol+1;
  while (fc~=0 && error>tol && cont<it)
	if fa*fc<0;
	  b=c;
	  fb=fc;
	  c=(a+b)/2;
	  x = c;
	  fc= eval(f);
	else 
	  a=c;
	  fa=fc;
	  c=(a+b)/2;
	  x = c;
	  fc=eval(f);
	end
	error= abs(b-a);
	cont = cont + 1;
	I(cont) = cont;
	A(cont) = a;
	B(cont) = b;
	C(cont) = c;
	FC(cont) = fc;
	E(cont) = error;
  end
  
  %fprintf('La tabla:\n');
  fprintf('iter   a    b    c   f(c)   error\n');
  [I' A' B' C' FC' E']
  
  if (fc==0)
      raiz=c;
      fprintf('%f es una raiz.\n', raiz);
      return;
    elseif (error<=tol)
        raiz=c;
        fprintf('%f es una aproximacion a una raiz con una tolerancia de %f.\n', raiz, tol);
        return;
    end
    else
      raiz= Inf;
      fprintf('El intervalo es inadecuado');
    end
end
