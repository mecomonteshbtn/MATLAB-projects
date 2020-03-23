clear all
clc
fprintf('Portico\n')
%Calculo de coordenadas
EL=input('Número de ELEMENTOS\n');
NO=input('Número de NODOS\n');
Cd=[];
for i=1:NO
    fprintf('Ingrese las coordenada para X del nodo %d en mm\n', i);
    x=input('');
    fprintf('Ingrese las coordenada para Y del nodo %d en mm\n', i);
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
Ine=[];

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
    fprintf('Ingrese la BASE transversal del elemento %d en mm\n', i);
    b=input('');
    fprintf('Ingrese la ALTURA transversal del elemento %d en mm\n', i);
    h=input('');
    Ar=[Ar,b*h];
    fprintf('AREA (mm^2):\n');
    disp (Ar)
    Ine=[Ine,b*h^3/12];
    fprintf('INERCIA (mm^4):\n');
    disp (Ine)
    fprintf('Ingrese el MODULO DE ELASTICIDAD del elemento %d en Kn/mm^2\n', i);
    Mod=input('');
    ME=[ME,Mod];
    fprintf('MODULO DE ELASTICIDAD EN Kn/mm^2:\n');
    disp (ME)
end
for i=1:NO
    fprintf('Ingrese los GRADOS DE LIBERTAD en X para el nodo %d\n',i)
    GraLibx=input('');
    fprintf('Ingrese los GRADOS DE LIBERTAD en Y para el nodo %d\n',i)
    GraLiby=input('');
    fprintf('Ingrese los GRADOS DE LIBERTAD en Z para el nodo %d\n',i)
    GraLibz=input('');
    GraLib=[GraLib;GraLibx GraLiby GraLibz];
end
fprintf('GRADOS DE LIBERTAD:\n');
disp (GraLib)

%Calculo de matriz global
KG=zeros(3*NO);
for i=1:EL
    Co1=Ar(i)*ME(i)/Long(i)*Cos(i,1)^2+12*ME(i)*Ine(i)/Long(i)^3*Cos(i,2)^2;
    Co2=(Ar(i)*ME(i)/Long(i)-12*ME(i)*Ine(i)/Long(i)^3)*Cos(i,1)*Cos(i,2);
    Co3=6*ME(i)*Ine(i)/Long(i)^2*Cos(i,2);
    Co4=4*ME(i)*Ine(i)/Long(i);
    Co5=6*ME(i)*Ine(i)/Long(i)^2*Cos(i,1);
    Co6=2*ME(i)*Ine(i)/Long(i);
    Co7=Ar(i)*ME(i)/Long(i)*Cos(i,2)^2+12*ME(i)*Ine(i)/Long(i)^3*Cos(i,1)^2;
    K=[Co1 Co2 -Co3 -Co1 -Co2 -Co3;Co2 Co7 Co5 -Co2 -Co7 Co5;-Co3 Co5 Co4 Co3 -Co5 Co6;-Co1 -Co2 Co3 Co1 Co2 Co3;-Co2 -Co7 -Co5 Co2 Co7 -Co5;-Co3 Co5 Co6 Co3 -Co5 Co4];
    V=[GraLib(Nd(i,1),1),GraLib(Nd(i,1),2),GraLib(Nd(i,1),3),GraLib(Nd(i,2),1),GraLib(Nd(i,2),2),GraLib(Nd(i,2),3)];
    K0=zeros(3*NO);
    for j=1:6
        for k=1:6
            K0(V(j),V(k))=K(j,k);
        end
    end
    fprintf('MATRIZ GLOBAL DEL ELEMENTO %d\n',i);
    disp (K)
    KG=KG+K0;
    K0=[];
end
fprintf('MATRIZ GLOBAL\n');
disp (KG)

%Calculo de N
% %Calculo de N

L=zeros(NO*3,1);
Lele=[];
Vc1=[];
Vc2=[];
Vc3=[];
Vc4=[];
Vc5=[];
Vc6=[];
for i=1:EL
fprintf('Ingrese la reaccion inicial en X del elemento %d\n', i);
Vc1(i)=input('');
fprintf('Ingrese la  reaccion inicial en Y del elemento %d\n', i);
Vc2(i)=input('');
fprintf('Ingrese el MOMENTO inicial del elemento %d\n', i);
Vc3(i)=input('');
fprintf('Ingrese la reaccion final en X del elemento %d\n', i);
Vc4(i)=input('');
fprintf('Ingrese la reaccion final en Y del elemento %d\n', i);
Vc5(i)=input('');
fprintf('Ingrese el MOMENTO final del elemento  %d\n', i);
Vc6(i)=input('');
Lele=[Vc1(i),Vc2(i),Vc3(i),Vc4(i),Vc5(i),Vc6(i)];
vectordegrados=[];
fprintf('Ingrese los GRADOS DE LIBERTAD del elemento  %d\n', i);
grados=input('');
for j=1:6
    vectordegrados=[vectordegrados,grados];
    grados=input('');
end
fprintf('GRADOS DE LIBERTAD %d\n',i)
disp (vectordegrados)
L1=zeros(NO*3,1);
for j=1:6
     L1(vectordegrados(j))=Lele(j);
end
L=L+L1;
fprintf('L %d\n',i);
disp (Lele)
end
fprintf('L\n');
disp (L)
%Ingresar cargas en los nodos

Carga=[];
Reac=input('Ingrese el numero de restricciones\n');
Car=input('Ingrese el numero de cargas\n');
for i=1:Car
fprintf('Ingrese el VALOR de la carga %d en Kn\n', i);
Vc=input('');
fprintf('Ingrese el GRADO DE LIBERTAD donde se encuentra la carga %d\n', i);
Gl=input('');
Carga=[Carga;Vc Gl];
end
N=zeros(3*NO,1);
for i=1:size(Carga)
    N(Carga(i,2))=Carga(i,1);
end
N

F=N-L

%calculo de desplazamientos

F0=F(1:3*NO-Reac);
K0=KG([1:3*NO-Reac],[1:3*NO-Reac]);
U0=inv(K0)*F0;
K2=KG([3*NO-Reac+1:end],[1:3*NO-Reac]);
F1=K2*U0;
F1
U=[U0;zeros(Reac,1)]
L1=L(3*NO-Reac+1:3*NO);
L1
R=F1+L1;
R
%CICLOS, MULTIPLICAR POR LOS MISMOS K DE ARRIBA USANDO V
Ue=[];
Felem=[];
Le=[];
Nelem=[];
finternas=[];

for i=1:EL
    Co1=Ar(i)*ME(i)/Long(i)*Cos(i,1)^2+12*ME(i)*Ine(i)/Long(i)^3*Cos(i,2)^2;
    Co2=(Ar(i)*ME(i)/Long(i)-12*ME(i)*Ine(i)/Long(i)^3)*Cos(i,1)*Cos(i,2);
    Co3=6*ME(i)*Ine(i)/Long(i)^2*Cos(i,2);
    Co4=4*ME(i)*Ine(i)/Long(i);
    Co5=6*ME(i)*Ine(i)/Long(i)^2*Cos(i,1);
    Co6=2*ME(i)*Ine(i)/Long(i);
    Co7=Ar(i)*ME(i)/Long(i)*Cos(i,2)^2+12*ME(i)*Ine(i)/Long(i)^3*Cos(i,1)^2;
    K=[Co1 Co2 -Co3 -Co1 -Co2 -Co3;Co2 Co7 Co5 -Co2 -Co7 Co5;-Co3 Co5 Co4 Co3 -Co5 Co6;-Co1 -Co2 Co3 Co1 Co2 Co3;-Co2 -Co7 -Co5 Co2 Co7 -Co5;-Co3 Co5 Co6 Co3 -Co5 Co4];
    V=[GraLib(Nd(i,1),1),GraLib(Nd(i,1),2),GraLib(Nd(i,1),3),GraLib(Nd(i,2),1),GraLib(Nd(i,2),2),GraLib(Nd(i,2),3)];
    K
    V
    Ue=[];
    Le=[];
    for  j=1:6
        Ue=[Ue;U(V(j))];
    end
    Lele=[Vc1(i);Vc2(i);Vc3(i);Vc4(i);Vc5(i);Vc6(i)];
    Ue
    Fe=K*Ue;
    Fe
    Lele
    Ne=Lele+Fe; 
    Ne
    T=[Cos(i,1) Cos(i,2) 0 0 0 0;-Cos(i,2) Cos(i,1) 0 0 0 0;0 0 1 0 0 0;0 0 0 Cos(i,1) Cos(i,2) 0;0 0 0 -Cos(i,2) Cos(i,1) 0;0 0 0 0 0 1];
    f=T*Ne;
    finternas=[finternas,f];
    finternas
end


