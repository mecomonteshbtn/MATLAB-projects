clc; %comando para borrar la pantalla
clear all; %Borrar la memoria

EF=AG-BC-CD-DE;

if PHI2==0  % el doble igual se pone para preguntar
	Nc=5.14
	Nq=1
	Ng=0

elseif PHI2==1
	Nc=5.38
	Nq=1.09
	Ng=0.07

elseif PHI2==2
	Nc=5.63
	Nq=1.20
	Ng=0.15

elseif PHI2==3
	Nc=5.90
	Nq=1.31
	Ng=0.24

elseif PHI2==4
	Nc=6.19
	Nq=1.43
	Ng=0.34

elseif PHI2==5
	Nc=6.49
	Nq=1.57
	Ng=0.45

elseif PHI2==6
	Nc=6,81
	Nq=1.72
	Ng=0.57

elseif PHI2==7
	Nc=7.16
	Nq=1.88
	Ng=0.71

elseif PHI2==8
	Nc=7.53
	Nq=2.06
	Ng=0.86

elseif PHI2==9
	Nc=7.92
	Nq=2.25
	Ng=1.03

elseif PHI2==10
	Nc=8.35
	Nq=2.47
	Ng=1.22

elseif PHI2==11
	Nc=8.80
	Nq=2.71
	Ng=1.44

elseif PHI2==12
	Nc=9,28
	Nq=2.97
	Ng=1.69

elseif PHI2==13
	Nc=9.81
	Nq=3.26
	Ng=1.97

elseif PHI2==14
	Nc=10.37
	Nq=3,59
	Ng=2.29

elseif PHI2==15
	Nc=10.98
	Nq=3.94
	Ng=2.65

elseif PHI2==16
	Nc=11.63
	Nq=4.34
	Ng=3.66

elseif PHI2==17
	Nc=12.34
	Nq=4.77
	Ng=3.53

elseif PHI2==18
	Nc=13.10
	Nq=5,26
	Ng=4.07

elseif PHI2==19
	Nc=13.93
	Nq=5.80
	Ng=4.68

elseif PHI2==20
	Nc=14.83
	Nq=6.40
	Ng=5.39

elseif PHI2==21
	Nc=15.82
	Nq=7.07
	Ng=6.20

elseif PHI2==22
	Nc=16.88
	Nq=7.82
	Ng=7.13

elseif PHI2==23
	Nc=18.05
	Nq=8.66
	Ng=8.20

elseif PHI2==24
	Nc=19.32
	Nq=9.60
	Ng=9.44

elseif PHI2==25
	Nc=20.72
	Nq=10.66
	Ng=10.88
end

Ka=(tan((45-PHI1/2)*pi()/180))^2;
IH=EF*tan(alfa);
Pa=GAMMA1*(GH+IH)^2*Ka/2;
Ph=Pa*cos(alfa);
Pv=Pa*sin(alfa);


MPa=Ph*(GH+IH)/3;
Kp=(tan((45+PHI2/2)*pi()/180))^2;
Z=GAMMA2*AD^2*Kp/2;
Y=2*Ch*AD*(Kp)^0.5;
Pp=Z+Y;
MPp=Z*AD/3+Y*AD/2;

W(1)=BC*(AD-AB)*GAMMA1;
W(2)=2.5*CD*(GH-AB)/2;
W(3)=2.5*DE*(GH-AB);
W(4)=2.5*AB*AG;
W(5)=EF*(GH-AB)*GAMMA2;
W(6)=EF^2*tan(alfa)/2;

Brazo(1)=AB/2;
Brazo(2)=2*CD/3+AB;
Brazo(3)=BC+CD+DE/2;
Brazo(4)=AG/2;
Brazo(5)=EF/2+DE+CD+BC;
Brazo(6)=2*EF/3+CD+DE+BC;

if alfa==0 %%no tiene inclinación
    Mtotal=MPp;
else
    Mtotal=Pp/3+Pv*AG;
end
Wtotal=0;

for i=1:1:5
    M(i)=W(i)*Brazo(i);
    Wtotal=Wtotal+W(i);
    Mtotal=Mtotal+M(i);
end

FSvolteo=Mtotal/MPa
R=AG*2*Ch/3+Wtotal*tan(PHI2*pi()/270);
FSd=(R+Pp)/Ph

Mneto=Mtotal-MPa;
OE=Mneto/Wtotal;
e=AG/2-OE;
qmax=(Wtotal/AG)*(1+6*e/AG);
qmin=(Wtotal/AG)*(1-6*e/AG);

if e>AG/6
    fprintf('\n\n SE DEBE REDIMENSIONAR! \n\n');%\n es para cambiar de renglon, es como dar enter
end

q=GAMMA2*AD;
Bprima=AG-2*e;
Fcd=1+0.4*AD/Bprima;
PSI=atan(Ph/Wtotal);%atan(x) es tangente inversa de x
Fgammai=1-PSI/PHI2;
Fqd=1+2*tan(PHI2*pi()/180)*(1-sin(PHI2*pi()/180))^2*AD/Bprima;
Fci=(1-PSI/90)^2;

qu=Ch*Nc*Fcd*Fci+q*Nq*Fqd*Fci+GAMMA2*Bprima*Ng*Fgammai;
FSq=qu/Wtotal
