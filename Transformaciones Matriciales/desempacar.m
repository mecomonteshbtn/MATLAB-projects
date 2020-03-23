function[Xt,Yt,Zt]=desempacar(pts_trans,filas,columnas)

Xt=[];
Yt=[];
Zt=[];

for i=1:columnas
    Xt=[Xt; pts_trans(1,(1+73*(i-1)):(73*i))];
    Yt=[Yt; pts_trans(1,(1+73*(i-1)):(73*i))];
    Zt=[Zt; pts_trans(1,(1+73*(i-1)):(73*i))];
end