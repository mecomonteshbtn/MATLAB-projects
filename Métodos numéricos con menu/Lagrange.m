function [x0,y0]=Lagrange(x0,y0);

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
   f=zeros(1,n);
   Ilog=logical(eye(n));

   for i=1:n
     Pi=poly(X(~Ilog(i,:)));
     Pi=Pi./polyval(Pi,X(Ilog(i,:)));
     fprintf('\n L%g(X) = ',i);
     for j=1:n
         if j==n-1
             fprintf('%f *X + ',Pi(j)); 
         elseif j==n
             fprintf('%f ',Pi(j));
         else
             fprintf('%f *X^%g +',Pi(j),n-j);
         end
     end
     Pi=Pi.*Y(Ilog(i,:));
     f=f+Pi;
   end
   
   fprintf('\n\n POLINOMIO INTERPOLANTE DE LAGRANGE: ');
   fprintf('\n\n P(X) = ');
   for j=1:n
         if j==n-1
             fprintf('%f *X + ',f(j)); 
         elseif j==n
             fprintf('%f ',f(j));
         else
             fprintf('%f *X^%g +',f(j),n-j);
         end
   end
end