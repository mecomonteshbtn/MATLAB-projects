clc;
clear all;
clf;

options=optimset('LevenbergMarquardt','on','TolFun',1e-15);
[x,resnorm,residual]= lsqnonlin(@imipenem,[1 1 1 1],[],[],options);
t=load('tiempo.txt');%datos de tiempo experimental [min]
Ce=load('concentracion.txt');%datos experimentales de concentracion [ug/mL]

Cm=(500.*((x(4)-x(3)).*exp(-x(3).*t)-(x(4)-x(2)).*exp(-x(2).*t)))./(x(1).*(x(2)-x(3)));%concentracion del farmaco en el plasma sanguineo

Io=500/30;%velocidad de infusion del farmaco [mg/min]
Kte=x(2)*x(3)/x(4); %constante global de velocidad de eliminacion del farmaco [1/min]
Kpt=(x(2)+x(3))-(x(4)+Kte); %constante de velocidad de transporte del farmco entre plasma y tejido [1/min]
Co=500000/x(1);%concentracion inicial del farmaco en el cuerpo [ug/mL]
ABC=Co/Kte; %area bajo la curva [ug.min/mL]
Vd=x(1)*(1+(x(4)/Kpt));%volumen de distribucion total del farmaco
CLplasma=Kte*Vd;%aclaramiento plasmatico [mL/min]
CLdializador=107700/ABC;%aclaramiento del dializador [mL/min]

Co=num2str(Co);
Kte=num2str(Kte);
Io=num2str(Io);
Vd=num2str(Vd);
CLplasma=num2str(CLplasma);
CLdializador=num2str(CLdializador);
Ktp=num2str(x(4));%constante de velocidad de transporte del farmco entre plasma y tejido [1/min]
Kpt=num2str(Kpt);%constante de velocidad de transporte del farmco entre plasma y tejido [1/min]

residual
resnorm

titulo=['Io=' Io ' [mg/min]    ' 'Co=' Co ' [ug/mL]    ' 'Kte=' Kte...
         ' [1/min]   ' '     Vd=' Vd ' [L]' '    CLplasma=' CLplasma ' [mL/min]'....
         '    CLdializador=' CLdializador ' [mL/min]' '    Ktp=' Ktp '[1/min]'...
         '    Kpt=' Kpt '[1/min]'];
plot(t,Cm,'r-',t,Ce,'bo')
title(titulo)
xlabel('Tiempo [min]')
ylabel('Concentración [ug/L]')

for i=1:8,
error(i)=abs(residual(i))*100/Ce(i);
end
error