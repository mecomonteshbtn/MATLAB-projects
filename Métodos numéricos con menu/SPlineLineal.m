function [x0,y0]=SPlineLineal(x0,y0);
  
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

  fprintf('Los trazadores lineales son:');
  for i=1:n-1
    A=(Y(i+1)-Y(i))/(X(i+1)-X(i));
    B=Y(i)-A*X(i);
    fprintf('\n  S%g(x) = %f *X + %f         %f < X < %f',i,A,B,X(i),X(i+1));
  end
end