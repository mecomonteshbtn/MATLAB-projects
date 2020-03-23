function [x0,y0]=SPlineCuadratico(x0,y0);
  
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
  V=zeros(3*(n-1),1);
  Z=zeros(3*(n-1));
  m=length(V);
  Z(m,m-2)=2*X(n);
  Z(m,m-1)=1;
  j=1;
  f=1;

  for i=1:2:2*(n-1)
    Z(i,f:f+2)=[X(j)^2 X(j) 1];
    V(i)=Y(j);
    j=j+1;
    Z(i+1,f:f+2)=[X(j)^2 X(j) 1];
    V(i+1)=Y(j);
    f=f+3;
  end

  j=1;
  l=2;
  for i=0:n-3
    Z(i+2*n-1,j:j+1)=[2*X(l) 1];
    Z(i+2*n-1,j+3:j+4)=[-2*X(l) -1];
    j=j+3;
    l=l+1;
  end
  C=inv(Z)*V;
  
  fprintf('\n Los Trazadores cuadraticos son: ');
  for i=1:n-1
    fprintf('\n  S%g(x) = %f *X^2 + %f *X + %f         %f < X < %f',i,C(3*i-2),C(3*i-1),C(3*i),X(i),X(i+1));
  end  
end