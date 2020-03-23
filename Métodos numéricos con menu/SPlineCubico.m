 function [x0,y0]=SPlineCubico(x0,y0);
  
  Entradas={'X = ','Y = '};
  Titulo='DATOS DE ENTRADA';
  Dimensiones=[2 30;2 30];
  Defaul={x0,y0};
  e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);
  
  x0=e{1};
  y0=e{2};

  X=str2num(e{1});
  Y=str2num(e{2});
  n=length(X);

  for i=1:n-1
      h(i)=X(i+1)-X(i); 
  end

  for i=2:n-1
      alfa(i)=3/h(i)*(Y(i+1)-Y(i))-3/h(i-1)*(Y(i)-Y(i-1)); 
  end

  l(1)=1; 
  mu(1)=0; 
  z(1)=0;

  for i=2:n-1
      l(i)=2*(X(i+1)-X(i-1))-h(i-1)*mu(i-1); 
      mu(i)=h(i)/l(i); 
      z(i)=(alfa(i)-h(i-1)*z(i-1))/l(i); 
  end

  l(n)=1; 
  z(n)=0; 
  c(n)=0;

  for i=n-1:-1:1
      c(i)=z(i)-mu(i)*c(i+1); 
      b(i)=(Y(i+1)-Y(i))/h(i)-h(i)*(c(i+1)+2*c(i))/3; 
      d(i)=(c(i+1)-c(i))/(3*h(i)); 
  end
  
  for i=1:n-1
      A(i)=d(i);
      B(i)=c(i)-3*d(i)*X(i);
      C(i)=b(i)-2*c(i)*X(i)+3*d(i)*X(i)^2;
      D(i)=Y(i)-b(i)*X(i)+c(i)*X(i)^2-3*d(i)*X(i)^3;
  end
  
  fprintf('Los trazadores Cubicos son: ');
  for i=1:n-1
    fprintf('\n  S%g(x) = %f *X^3 + %f *X^2 + %f *X + %f        %f < X < %f',i,A(i),B(i),C(i),D(i),X(i),X(i+1));
  end 
end