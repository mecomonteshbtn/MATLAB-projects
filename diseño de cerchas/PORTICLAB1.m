clc
clear all

fprintf('PORTICOS\n')
ar=fopen('entradasportico.txt');
fscanf(ar,'%s',3);
fprintf('Numero de elementos')
Ne=fscanf(ar,'%i',1)
fscanf(ar,'%s',3);
fprintf('Numero de nodos')
Nn=fscanf(ar,'%i',1)

fscanf(ar,'%s',4);
fscanf(ar,'%s',2);
Coord=[];
for i=1:Nn
    x=fscanf(ar,'%f',1);
    y=fscanf(ar,'%f',1);
    Coord=[Coord;x y];
end
Coord
Nodos=[];
Longs=[];
ploter=[];
Cosenos=[];
Modulos=[];
Gradosl=[];
Econst=input('¿el módulo elástico de los elementos es constante? [S/N]\n','s');

if Econst=='S'
    E=input('ingrese el módulo elástico de los elementos\n');
    for i=1:Ne
        Modulos=[Modulos,E];
    end
end

fscanf(ar,'%s',2);
fscanf(ar,'%s',2);
for i=1:Ne
    ni=fscanf(ar,'%f',1);
    nf=fscanf(ar,'%f',1);
    Nodos=[Nodos;ni nf];
    Longs=[Longs;((Coord(nf,1)-Coord(ni,1))^2+ (Coord(nf,2)-Coord(ni,2))^2)^(1/2)];
    Cosenos=[Cosenos;(Coord(nf,1)-Coord(ni,1))/Longs(i) (Coord(nf,2)-Coord(ni,2))/Longs(i)];
    ploter=[ploter; Coord(ni,1) Coord(ni,2);Coord(nf,1) Coord(nf,2)];
    if Econst~='S'
        fprintf('ingrese el módulo elástico del elemnto %d\n', i);
        E=input('E=');
        Modulos=[Modulos,E];
    end
    
end
if Econst~='S'
    Modulos
    OK=input('¿todo en orden? [S/N]\n','s');
while OK~='S'      
    Replace=input('ingrese el Elemento del Módulo errado\n');
    Modulos(Replace,:)=input('ingrese correctamente el módulo del elemento\n')
    OK=input('¿todo en orden? [S/N]\n','s');
end
end
Nodos
Longs
Cosenos
plot(ploter(:,1),ploter(:,2),'linewidth',2)
for i=1:Nn
    text(Coord(i,1),Coord(i,2),num2str(i))
end
axis equal
Areas=[];
Inercias=[];
fscanf(ar,'%s',6);
fscanf(ar,'%s',2);
for i=1:Ne
    b=fscanf(ar,'%f',1);
    h=fscanf(ar,'%f',1);
    Areas=[Areas,b*h];
    Inercias=[Inercias,b*h^3/12];
end
Areas
Inercias

fscanf(ar,'%s',6);
fscanf(ar,'%s',3);
for i=1:Nn
    Glx=fscanf(ar,'%f',1);
    Gly=fscanf(ar,'%f',1);
    Glz=fscanf(ar,'%f',1);
    Gradosl=[Gradosl;Glx Gly Glz];
end
Gradosl
Kglobal=zeros(3*Nn);
KBORRAR=[];
for i=1:Ne
    C1=Areas(i)*Modulos(i)/Longs(i)*Cosenos(i,1)^2+12*Modulos(i)*Inercias(i)/Longs(i)^3*Cosenos(i,2)^2;
    C2=(Areas(i)*Modulos(i)/Longs(i)-12*Modulos(i)*Inercias(i)/Longs(i)^3)*Cosenos(i,1)*Cosenos(i,2);
    C3=6*Modulos(i)*Inercias(i)/Longs(i)^2*Cosenos(i,2);
    C4=4*Modulos(i)*Inercias(i)/Longs(i);
    C5=6*Modulos(i)*Inercias(i)/Longs(i)^2*Cosenos(i,1);
    C6=2*Modulos(i)*Inercias(i)/Longs(i);
    C7=Areas(i)*Modulos(i)/Longs(i)*Cosenos(i,2)^2+12*Modulos(i)*Inercias(i)/Longs(i)^3*Cosenos(i,1)^2;
    K=[C1 C2 -C3 -C1 -C2 -C3;C2 C7 C5 -C2 -C7 C5;-C3 C5 C4 C3 -C5 C6;-C1 -C2 C3 C1 C2 C3;-C2 -C7 -C5 C2 C7 -C5;-C3 C5 C6 C3 -C5 C4];
    KBORRAR=[KBORRAR;K];
    V=[Gradosl(Nodos(i,1),1),Gradosl(Nodos(i,1),2),Gradosl(Nodos(i,1),3),Gradosl(Nodos(i,2),1),Gradosl(Nodos(i,2),2),Gradosl(Nodos(i,2),3)];
    K0=zeros(3*Nn);
    for j=1:6
        for k=1:6
            K0(V(j),V(k))=K(j,k);
        end
    end
    Kglobal=Kglobal+K0;
    K0=[];
end
Aflex=input('¿Hay apoyos flexibles? [S/N]\n','s');
Kresorte=[];
if Aflex=='S'
    Naf=input('Ingrese el número de apoyos flexibles\n')
    for i=1:Naf
        Kresorte=[Kresorte;input('Ingrese la constante de rigidez del resorte seguida del grado de libertad asociado\n')];
        Kglobal(Kresorte(i,2),Kresorte(i,2))=Kglobal(Kresorte(i,2),Kresorte(i,2))+Kresorte(i,1)
    end
end

L=zeros(3*Nn,1);
l=zeros(3*Nn,1);
Kglobal
KBORRAR
fscanf(ar,'%s',3);
Nr=fscanf(ar,'%i',1);
Cargas=[];
fscanf(ar,'%s',5);
Cnodo=input('¿Hay cargas aplicadas en los nodos? [S/N]\n','s');
if Cnodo=='S'
    Ncn=input('Ingrese el número de cargas en los nodos\n');
    for i=1:Ncn
        carga=fscanf(ar,'%f',1);
        carganodo=fscanf(ar,'%i',1);
        Cargas=[Cargas;carga carganodo];
        carga=[];
        carganodo=[];
    end
end
Cargas
N=zeros(3*Nn,1);
for i=1:size(Cargas)
    N(Cargas(i,2))=Cargas(i,1);
end
Lelementos=zeros(3*Nn,Ne);
U=zeros(3*Nn,1)

Desp=input('¿hay desplazamientos en los apoyos? [S/N]\n','s');
if Desp=='S'
    Ndesp=input('ingrese el número de desplazamientos\n')
    for i=1:Ndesp
        Dapoyo=input('ingrese el valor del desplazamiento(positivo hacia arriba) seguido del grado de libertad asociado\n')
        U(Dapoyo(2))=U(Dapoyo(2))+Dapoyo(1)
    end
end

Cluz=input('¿hay cargas aplicadas en las luces? [S/N]\n','s')
if Cluz=='S'
    Ncl=input('ingrese el número de cargas en luz\n') %digamos, hay un giro, una carga distribuida y una carga puntal, Ncl=3
    for i=1:Ncl
        TipoCL=input('¿qué tipo de carga en la luz es?[M/Cp/Cd/Cdt/G/D]\n','s') %M=Momento puntual, Cp=Carga puntual, Cd=Carga distribuida,Cdt=Carga distribuida triangular, G=giro, D=desplazamiento
        if TipoCL=='M' %Momento puntual
            dataM=input('ingrese el valor del momento(+ antihorario), elemento y ubicación entre corchetes\n') %ubicación medida de acuerdo a la direción escogida del elemento
            Ram=6*(dataM(1)*dataM(3)/Longs(dataM(2)))*(1-dataM(3)/Longs(2))
            Rbm=6*(dataM(1)*dataM(3)/Longs(dataM(2)))*(1-dataM(3)/Longs(2))
            Mam=dataM(1)*(-1+4*dataM(3)/Longs(dataM(2))-3*dataM(3)^2/Longs(dataM(2))^2)
            Mbm=dataM(1)*dataM(3)/Longs(dataM(2))*(2-3*dataM(3)/Longs(dataM(2)))
            
            
            l(Gradosl(Nodos(dataM(2),1),2),1)=Ram;
            l(Gradosl(Nodos(dataM(2),2),2),1)=Rbm;
            l(Gradosl(Nodos(dataM(2),1),3),1)=Mam;
            l(Gradosl(Nodos(dataM(2),2),3),1)=Mbm;
            L=L+l;
            Lelementos(:,dataM(2))=Lelementos(:,dataM(2))+l;
            l=zeros(3*Nn,1);
            
        end
        if TipoCL=='Cp' % Carga puntual
            dataCp=input('ingrese el valor de la carga puntual, elemento y ubicación entre corchetes\n') %ubicación es la distancia medida de acuerdo a la direción escogida del elemento ej [15KN 1mer 30mm]
                Rap=dataCp(1)*(Longs(dataCp(2))-dataCp(3))^2/Longs(dataCp(2))^3*(3*dataCp(3)+Longs(dataCp(2))-dataCp(3))
            Rbp=dataCp(1)*(dataCp(3))^2/Longs(dataCp(2))^3*(dataCp(3)+3*(Longs(dataCp(2))-dataCp(3)))
            Map=dataCp(1)*dataCp(3)*(Longs(dataCp(2))-dataCp(3))^2/Longs(dataCp(2))^2
            Mbp=dataCp(1)*dataCp(3)^2*(Longs(dataCp(2))-dataCp(3))/Longs(dataCp(2))^2
            
            
            l(Gradosl(Nodos(dataCp(2),1),2),1)=Rap;
            l(Gradosl(Nodos(dataCp(2),2),2),1)=Rbp;
            l(Gradosl(Nodos(dataCp(2),1),3),1)=Map;
            l(Gradosl(Nodos(dataCp(2),2),3),1)=Mbp;
            L=L+l;
            Lelementos(:,dataCp(2))=Lelementos(:,dataCp(2))+l;
            l=zeros(3*Nn,1);
        end
        if TipoCL=='Cd' %Carga distribuida
            dataCd=input('ingrese el valor de la carga distribuida y elemento\n')
            Rad=dataCd(1)*Longs(dataCd(2))/2
            Rbd=dataCd(1)*Longs(dataCd(2))/2
            Mad=dataCd(1)*Longs(dataCd(2))^2/12
            Mbd=-dataCd(1)*Longs(dataCd(2))^2/12
            
            
            l(Gradosl(Nodos(dataCd(2),1),2),1)=Rad;
            l(Gradosl(Nodos(dataCd(2),2),2),1)=Rbd;
            l(Gradosl(Nodos(dataCd(2),1),3),1)=Mad;
            l(Gradosl(Nodos(dataCd(2),2),3),1)=Mbd;
            L=L+l;
            Lelementos(:,dataCd(2))=Lelementos(:,dataCd(2))+l;
            l=zeros(3*Nn,1);
            
        end
        if TipoCL=='Ct' %Carga distribuida triangular
            dataCt=input('ingrese el valor de la carga distribuida triangular, elemento y dirección\n') %dirección es si el triangulo tiene pendiente acendente o decendente
            Rat=3*dataCt(1)*Longs(dataCt(2))/20
            Rbt=7*dataCt(1)*Longs(dataCt(2))/20
            Mat=dataCt(1)*Longs(dataCt(2))^2/30
            Mbt=-dataCt(1)*Longs(dataCt(2))^2/20
            
            l(Gradosl(Nodos(dataCt(2),1),2),1)=Rat;
            l(Gradosl(Nodos(dataCt(2),2),2),1)=Rbt;
            l(Gradosl(Nodos(dataCt(2),1),3),1)=Mat;
            l(Gradosl(Nodos(dataCt(2),2),3),1)=Mbt;
            L=L+l;
            Lelementos(:,dataCt(2))=Lelementos(:,dataCt(2))+l;
            l=zeros(3*Nn,1);
            
        end
        if TipoCL=='G' %Giro
            dataG=input('ingrese el valor del giro, elemento y ubicación entre corchetes\n') %ubicación es la distancia medida de acuerdo a la direción escogida del elemento
            Rag=6*Modulos(dataG(2))*Inercias(dataG(2))/Longs(dataG(2))^2*dataG(1)
            Rbg=-6*Modulos(dataG(2))*Inercias(dataG(2))/Longs(dataG(2))^2*dataG(1)
            Mag=2*Modulos(dataG(2))*Inercias(dataG(2))/Longs(dataG(2))*dataG(1)
            Mbg=4*Modulos(dataG(2))*Inercias(dataG(2))/Longs(dataG(2))*dataG(1)
            
            l(Gradosl(Nodos(dataG(2),1),2),1)=Rag;
            l(Gradosl(Nodos(dataG(2),2),2),1)=Rbg;
            l(Gradosl(Nodos(dataG(2),1),3),1)=Mag;
            l(Gradosl(Nodos(dataG(2),2),3),1)=Mbg;
            L=L+l;
            Lelementos(:,dataG(2))=Lelementos(:,dataG(2))+l;
            l=zeros(3*Nn,1);
        end
        if TipoCL=='D' %Desplazamiento
            U1=zeros(Nr,1)
            dataD=input('ingrese el valor de la desplazamiento, elemento, ubicación y grado de libertad asociado entre corchetes\n') %ubicación es la distancia medida de acuerdo a la direción escogida del elemento
            RaD=-12*Modulos(dataD(2))*Inercias(dataD(2))/Longs(dataD(2))^3*dataD(1)
            RbD=12*Modulos(dataD(2))*Inercias(dataD(2))/Longs(dataD(2))^3*dataD(1)
            MaD=-6*Modulos(dataD(2))*Inercias(dataD(2))/Longs(dataD(2))^2*dataD(1)
            MbD=-6*Modulos(dataD(2))*Inercias(dataD(2))/Longs(dataD(2))^2*dataD(1)
            
            l(Gradosl(Nodos(dataD(2),1),2),1)=RaD;
            l(Gradosl(Nodos(dataD(2),2),2),1)=RbD;
            l(Gradosl(Nodos(dataD(2),1),3),1)=MaD;
            l(Gradosl(Nodos(dataD(2),2),3),1)=MbD;
            L=L+l;
            Lelementos(:,dataD(2))=Lelementos(:,dataD(2))+l;
            l=zeros(3*Nn,1);
            %U(dataD(4))=U(dataD(4))+dataD(1)
        end
    end
end

L
F=N-L
F0=F(1:3*Nn-Nr)
K0=Kglobal([1:3*Nn-Nr],[1:3*Nn-Nr]);
K1=Kglobal([1:3*Nn-Nr],[3*Nn-Nr+1:end])
K2=Kglobal([3*Nn-Nr+1:end],[1:3*Nn-Nr]);
K3=Kglobal([3*Nn-Nr+1:end],[3*Nn-Nr+1:end]);
U1=U(3*Nn-Nr+1:end)
U0=inv(K0)*(F0-K1*U1)
F1=K2*U0+K3*U1
U=[];
U=[U0;U1]
%CICLOS, MULTIPLICAR POR LOS MISMOS K DE ARRIBA USANDO V
Ue=[];
Felem=[];
Le=[];
Nelem=[];
finternas=[];
TBORRAR=[];

for i=1:Ne
    C1=Areas(i)*Modulos(i)/Longs(i)*Cosenos(i,1)^2+12*Modulos(i)*Inercias(i)/Longs(i)^3*Cosenos(i,2)^2;
    C2=(Areas(i)*Modulos(i)/Longs(i)-12*Modulos(i)*Inercias(i)/Longs(i)^3)*Cosenos(i,1)*Cosenos(i,2);
    C3=6*Modulos(i)*Inercias(i)/Longs(i)^2*Cosenos(i,2);
    C4=4*Modulos(i)*Inercias(i)/Longs(i);
    C5=6*Modulos(i)*Inercias(i)/Longs(i)^2*Cosenos(i,1);
    C6=2*Modulos(i)*Inercias(i)/Longs(i);
    C7=Areas(i)*Modulos(i)/Longs(i)*Cosenos(i,2)^2+12*Modulos(i)*Inercias(i)/Longs(i)^3*Cosenos(i,1)^2;
    K=[C1 C2 -C3 -C1 -C2 -C3;C2 C7 C5 -C2 -C7 C5;-C3 C5 C4 C3 -C5 C6;-C1 -C2 C3 C1 C2 C3;-C2 -C7 -C5 C2 C7 -C5;-C3 C5 C6 C3 -C5 C4];
    V=[Gradosl(Nodos(i,1),1),Gradosl(Nodos(i,1),2),Gradosl(Nodos(i,1),3),Gradosl(Nodos(i,2),1),Gradosl(Nodos(i,2),2),Gradosl(Nodos(i,2),3)];
    for  j=1:6
        Ue=[Ue;U(V(j))];;
        Le=[Le;Lelementos(V(j),i)];
    end
    Fe=K*Ue;
    Ue=[];
    Felem=[Felem,Fe];
    Ni=Fe+Le;
    Le=[];
    Nelem=[Nelem,Ni];
    T=[Cosenos(i,1) -Cosenos(i,2) 0 0 0 0;Cosenos(i,2) Cosenos(i,1) 0 0 0 0;0 0 1 0 0 0;0 0 0 Cosenos(i,1) -Cosenos(i,2) 0;0 0 0 Cosenos(i,2) Cosenos(i,1) 0;0 0 0 0 0 1];
    TBORRAR=[TBORRAR;T];
    f=T'*Ni;
    finternas=[finternas,f];
end
Felem
Nelem
finternas
TBORRAR;
pause