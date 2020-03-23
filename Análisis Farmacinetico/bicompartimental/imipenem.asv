function F=imipenem(x)

t=load('tiempo.txt');%datos de tiempo experimental [min]
Cs=load('concentracion.txt'); %datos experimentales de concentracion [ug/mL]
F=Cs-(500.*((x(4)-x(3)).*exp(-x(3).*t)-(x(4)-x(2)).*exp(-x(2).*t)))./(x(1).*(x(2)-x(3)));