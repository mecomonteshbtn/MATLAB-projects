function[Bf]=aplicar_cuaternion(pts,eje_rot,angulo)

[filas,columnas]=size(pts);
F=cos(angulo/2);
e=eje_rot.*sin(angulo/2);
e=e./norm(e);%convirtiendo el vector en unitario

for i=1:filas
    for j=1:columnas
        Bf(i,j)=pts(i,j)+2.*F.*(cross(e,pts(i,j)))+2.*(cross(e,cross(e,pts(i,j))));
    end
end