clear all
clc
fprintf('Cercha\n')
%Calculo de coordenadas
EL=input('Número de ELEMENTOS\n');
NO=input('Número de NODOS\n');
Cd=[];
for i=1:NO
    fprintf('Ingrese las coordenadas para X del nodo %d en(mm)\n', i);
    x=input('');
    fprintf('Ingrese las coordenadas para Y del nodo %d en(mm)\n', i);
    y=input('');
    Cd=[Cd;x y];
end
fprintf('COORDENADAS:\n');
disp (Cd)

%Calculo de longitud,cosenos,grados de libertad
Ar=[];
ME=[];
Nd=[];
Long=[];
Cos=[];
GraLib=[];

for i=1:EL
    fprintf('Ingrese el NODO INICIAL del elemento %d\n', i);
    Ni=input('');
    fprintf('Ingrese el NODO FINAL del elemento %d\n', i);
    Nf=input('');
    Nd=[Nd;Ni Nf];
    fprintf('NODOS:\n');
    disp (Nd)
    Long=[Long;((Cd(Nf,1)-Cd(Ni,1))^2+ (Cd(Nf,2)-Cd(Ni,2))^2)^(1/2)];
    fprintf('LONGITUD DEL ELEMENTO EN mm:\n');
    disp (Long)
    Cos=[Cos;(Cd(Nf,1)-Cd(Ni,1))/Long(i) (Cd(Nf,2)-Cd(Ni,2))/Long(i)];
    fprintf('COSENOS DIRECTORES:\n');
    disp (Cos)
    fprintf('Ingrese el AREA del elemento %d en mm^2\n', i);
    A=input('');
    Ar=[Ar,A];
    fprintf('AREA EN mm^2:\n');
    disp (Ar)
    fprintf('Ingrese el MODULO DE ELASTICIDAD del elemento %d en Kn/mm^2\n', i);
    Mod=input('');
    ME=[ME,Mod];
    fprintf('MODULO DE ELASTICIDAD EN Kn/mm^2:\n');
    disp (ME)
end
%calculo grados de libertad
for i=1:NO
    fprintf('Ingrese los GRADOS DE LIBERTAD en X para el nodo %d\n',i)
    GraLibx=input('');
    fprintf('Ingrese los GRADOS DE LIBERTAD en Y para el nodo %d\n',i)
    GraLiby=input('');
    GraLib=[GraLib;GraLibx GraLiby];
end
fprintf('GRADOS DE LIBERTAD es:\n');

disp (GraLib)
%calculo matriz global

KG=zeros(2*NO);
for i=1:EL
   K=Ar(i)*ME(i)/Long(i)*[Cos(i,1)^2, Cos(i,1)*Cos(i,2), -Cos(i,1)^2, -Cos(i,1)*Cos(i,2);Cos(i,1)*Cos(i,2),Cos(i,2)^2,-Cos(i,1)*Cos(i,2),-Cos(i,2)^2;-Cos(i,1)^2, -Cos(i,1)*Cos(i,2), Cos(i,1)^2, Cos(i,1)*Cos(i,2);-Cos(i,1)*Cos(i,2),-Cos(i,2)^2,Cos(i,1)*Cos(i,2),Cos(i,2)^2];
   F=[GraLib(Nd(i,1),1),GraLib(Nd(i,1),2),GraLib(Nd(i,2),1),GraLib(Nd(i,2),2)];
   K0=zeros(2*NO);
for j=1:4
    for k=1:4
        K0(F(j),F(k))=K(j,k);
    end
end
    KG=KG+K0;
    K0=[];
end
fprintf('MATRIZ GLOBAL EN Kn/mm^2:\n');
disp (KG)

%calculo de fuerzas y desplazamientos
Carga=[];
Reac=input('Ingrese el número de restricciones\n');
Car=input('Ingrese el numero de cargas\n');
for i=1:Car
fprintf('Ingrese el VALOR de la carga %d en Kn\n', i);
Vc=input('');
fprintf('Ingrese el GRADO DE LIBERTAD donde se encuentra la carga %d\n', i);
Gl=input('');
Carga=[Carga;Vc Gl];
end
fprintf('CARGA CON SU RESPECTIVO GRADO DE LIBERTAD\n')
disp (Carga)

F0=zeros(2*NO-Reac,1);
for i=1:size(Carga)
F0(Carga(i,2))=Carga(i,1);
end
K0=KG([1:2*NO-Reac],[1:2*NO-Reac]);
U0=inv(K0)*F0;
K2=KG([2*NO-Reac+1:end],[1:2*NO-Reac]);
F1=K2*U0;
fprintf('FUERZAS EN LAS REACCIONES EN Kn:\n');
disp (F1)

U=[U0;zeros(Reac,1)];
fprintf('DESPLAZAMIENTOS EN mm:\n');
disp (U)

Fuerza=[];
Axial=[];
for i=1:EL
Fuerza=[Fuerza; (U(GraLib(Nd(i,2),1))-U(GraLib(Nd(i,1),1)))*Cos(i,1)+(U(GraLib(Nd(i,2),2))-U(GraLib(Nd(i,1),2)))*Cos(i,2)];
Axial=[Axial;Fuerza(i)*Ar(i)*ME(i)/Long(i)];
end
fprintf('FUERZA AXIAL EN Kn:\n');
disp (Axial)


