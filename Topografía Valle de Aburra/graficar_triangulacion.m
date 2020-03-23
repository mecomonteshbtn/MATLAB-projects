function [X_triangulacion,Y_triangulacion,Z_triangulacion]=graficar_triangulacion(puntos,caras)
clc;

[N,M]=size(caras);
Xt=zeros(N,M);
Yt=zeros(N,M);
Zt=zeros(N,M);

for i=1:N
    Xt=puntos(caras(i),1);
    Yt=puntos(caras(i),2);
    Zt=puntos(caras(i),3);
end

X_triangulacion=[Xt(:,1);Xt(:,2);Xt(:,3)];
Y_triangulacion=[Yt(:,1);Yt(:,2);Yt(:,3)];
Z_triangulacion=[Zt(:,1);Zt(:,2);Zt(:,3)];

figure(1)
fill3( X_triangulacion, Y_triangulacion, Z_triangulacion,'k')