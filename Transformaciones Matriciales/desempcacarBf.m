function[Xtc;Ytc;Ztc]=desempcacarBf(Bf,filas,columnas)

Xtc=[]
Ytc=[]
Ztc=[]

for i=1:columnas
    Xtc=[Xtc; Bf(1,(1+73*(i-1)):(73*i))];
    Ytc=[Ytc; Bf(1,(1+73*(i-1)):(73*i))];
    Ztc=[Ztc; Bf(1,(1+73*(i-1)):(73*i))];
end