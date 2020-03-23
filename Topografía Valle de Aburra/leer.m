function [puntos, caras]=leer

clc;
clear all;

puntos_muybaja=fopen('puntos_muybaja.txt');
puntos_muybaja=fscanf(puntos_muybaja,'%f');

Np_muybaja=puntos_muybaja(1);
ni_muybaja=puntos_muybaja(2:4:4*Np_muybaja-2);
X_muybaja=puntos_muybaja(3:4:4*Np_muybaja-1);
Y_muybaja=puntos_muybaja(4:4:4*Np_muybaja);
Z_muybaja=puntos_muybaja(5:4:4*Np_muybaja+1);

puntos_baja=fopen('puntos_baja.txt');
puntos_baja=fscanf(puntos_baja,'%f');

Np_baja=puntos_baja(1);
ni_baja=puntos_baja(2:4:4*Np_baja-2);
X_baja=puntos_baja(3:4:4*Np_baja-1);
Y_baja=puntos_baja(4:4:4*Np_baja);
Z_baja=puntos_baja(5:4:4*Np_baja+1);

puntos_alta=fopen('puntos_alta.txt');
puntos_alta=fscanf(puntos_alta,'%f');

Np_alta=puntos_alta(1);
ni_alta=puntos_alta(2:4:4*Np_alta-2);
X_alta=puntos_alta(3:4:4*Np_alta-1);
Y_alta=puntos_alta(4:4:4*Np_alta);
Z_alta=puntos_alta(5:4:4*Np_alta+1);

puntos=[X_muybaja,Y_muybaja,Z_muybaja;X_baja,Y_baja,Z_baja;X_alta,Y_alta,Z_alta];

caras_muybaja=fopen('caras_muybaja.txt');
caras_muybaja=fscanf(caras_muybaja,'%f');

Nc_muybaja=caras_muybaja(1);
ci_muybaja=caras_muybaja(2:4:4*Nc_muybaja-2);
P1_muybaja=caras_muybaja(3:4:4*Nc_muybaja-1);
P2_muybaja=caras_muybaja(4:4:4*Nc_muybaja);
P3_muybaja=caras_muybaja(5:4:4*Nc_muybaja+1);

caras_baja=fopen('caras_baja.txt');
caras_baja=fscanf(caras_baja,'%f');

Nc_baja=caras_baja(1);
ci_baja=caras_baja(2:4:4*Nc_baja-2);
P1_baja=caras_baja(3:4:4*Nc_baja-1);
P2_baja=caras_baja(4:4:4*Nc_baja);
P3_baja=caras_baja(5:4:4*Nc_baja+1);

caras_alta=fopen('caras_alta.txt');
caras_alta=fscanf(caras_alta,'%f');

Nc_alta=caras_alta(1);
ci_alta=caras_alta(2:4:4*Nc_alta-2);
P1_alta=caras_alta(3:4:4*Nc_alta-1);
P2_alta=caras_alta(4:4:4*Nc_alta);
P3_alta=caras_alta(5:4:4*Nc_alta+1);

caras=[P1_muybaja,P2_muybaja,P3_muybaja;P1_baja,P2_baja,P3_baja;P1_alta,P2_alta,P3_alta];