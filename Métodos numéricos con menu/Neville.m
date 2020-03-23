function [x0,y0]=Neville(x0,y0);

   Entradas={'X = ','Y = ','Valor a interpolar x= '};
   Titulo='DATOS DE ENTRADA';
   Dimensiones=[2 30;2 30;1 4];
   Defaul={x0,y0,'2.5'};
   e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);
  
   x0=e{1};
   y0=e{2};

   X=str2num(e{1});
   Y=str2num(e{2});
   t=str2num(e{3});
   n=length(X);
   
   Q = zeros(n,n);


  for i = 1:n
      Q(i,1) = fx(i);
  end
  for j = 2:n
      for i = j:n
          Q(i,j) = ((t-x(i-j)) * Q(i,j-1)/(x(i)-x(i-j))) + ((x(i)-t) * Q(i-1,j-1)/(x(i)-x(i-j)));
      end
  end
  fprintf('\n\n El valor interpolado es f(%f) = %f',t,Q);   
end