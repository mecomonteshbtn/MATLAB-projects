clc
clear all
close all

R=input('ingrese el valor de R: ');
r=input('ingrese el valor de r: ');

Rot=[0.4249 -0.4223 -0.8007;...
        0.8823 0.3911 0.2619;...
        0.2026 -0.8177 0.5388];%matriz Rot que son las primeras 3 filas y 3 columnas de Mt

[vectores,valores]=eig(Rot);%halla los valores y vectores propios de Rot

[X,Y,Z]=toroide(R,r);
[pts_trans,filas,columnas,pts]=empacar(X,Y,Z);
[Xt,Yt,Zt]=desempacar(pts_trans,filas,columnas);
[eje_rot,angulo]=sel_vector(vectores,valores);
[Bf]=aplicar_cuaternion(pts,eje_rot,angulo);
[Xtc,Ytc,Ztc] = desempcacarBf(Bf,filas,columnas,pts);

figure (1)
mesh(X,Y,Z)
xlabel('eje X');
ylabel('eje Y');
zlabel('eje Z');
title('TOROIDE SIN TRANSFORMACION');

figure (2)
mesh(Xt,Yt,Zt)
xlabel('eje X');
ylabel('eje Y');
zlabel('eje Z');
title('TOROIDE TRANSFORMADO CON LA MATRIZ MT');

figure (3)
mesh(Xtc,Ytc,Ztc)
xlabel('eje X');
ylabel('eje Y');
zlabel('eje Z');
title('TOROIDE TRANSFORMADO CON EL CUATERNION');
