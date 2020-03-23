function principal
clc;
clear all;

[puntos,caras]=leer;
[X_triangulacion,Y_triangulacion,Z_triangulacion]=graficar_triangulacion(puntos,caras);
[gradientes]=gradiente(X_triangulacion,Y_triangulacion,Z_triangulacion);
volumen=gradientes./2;
volumen_del_vallle=sum(volumen)

fill3(X_triangulacion,Y_triangulacion,Z_triangulacion,gradiente)