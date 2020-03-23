function [gradientes]=gradiente(X_triangulacion,Y_triangulacion,Z_triangulacion)

[N,M]=size(X_triangulacion);
gradientes=zeros(N,1);

for i=3:3:N
   V1=[X_triangulacion(i)-X_triangulacion(i-1),Y_triangulacion(i)-Y_triangulacion(i-1),Z_triangulacion(i)-Z_triangulacion(i-1)];
   V2=[X_triangulacion(i)-X_triangulacion(i-2),Y_triangulacion(i)-Y_triangulacion(i-2),Z_triangulacion(i)-Z_triangulacion(i-2)];
   gradientes(i)=norm(cross(V1,V2));
end