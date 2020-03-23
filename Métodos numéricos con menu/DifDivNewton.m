function  [x0,y0]=DifDivNewton(x0,y0);

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
   D=zeros(n, n);
   D(:,1)=Y';

   for j=2:n
      for k=j:n
         D(k,j)=(D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
      end
   end

   C=D(n,n);

   for k=(n-1):-1:1
      C=conv(C,poly(X(k)));
      m=length(C);
      C(m)=C(m)+D(k,k);
   end
   fprintf('\n TABLA DE DIFERENCIAS DIVIDIDAS: \n\n');
   disp(D);
   
   fprintf('\n\n POLINOMIO INTERPOLANTE DE NEWTON: ');
   fprintf('\n\n P(X) = ');
   for j=1:n
         if j==n-1
             fprintf('%f *X + ',C(j)); 
         elseif j==n
             fprintf('%f ',C(j));
         else
             fprintf('%f *X^%g +',C(j),n-j);
         end
   end
end
