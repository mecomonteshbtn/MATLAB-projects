function[pts_trans,filas,columnas,pts]=empacar(X,Y,Z)

pts=[];
x=[];
y=[];
z=[];

[filas,columnas]=size(X);
 
for i=1:filas
   x=[x X(i,:)];
   y=[y Y(i,:)];
   z=[z Z(i,:)];
end

pts(1,:)=x;
pts(2,:)=y;
pts(3,:)=z;
pts(4,:)=ones(1,filas*columnas);

   Mt=[0.4249 -0.4223 -0.8007 0;...
        0.8823 0.3911 0.2619 0;...
        0.2026 -0.8177 0.5388 0;...
        0 0 0 1];
    
   pts_trans=Mt*pts;