function F=imipenem(x)

t=load('tiempo.txt');%datos de tiempo experimental [min]
Cs=load('concentracion.txt'); %datos experimentales de concentracion [ug/mL]
F=Cs-(x(1).*exp(-x(2).*t));