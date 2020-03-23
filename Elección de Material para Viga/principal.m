n=1;
while n==1,
s=menu('ELIJA UNA DE LAS SIGUIENTES OPCIONES','CARGA EXCENTRICA','ACERO ESTRUCTURAL','MADERA','ALUMINIO 2014-T6 (ALCLAD)','ALUMINIO 6061-T6','SALIR DEL PROGRAMA');
switch s,
    case 1
        Carga_Excentrica
    case 2
        Acero
    case 3
        Madera
    case 4
        Aluminio_2014
    case 5
        Aluminio_6061
    case 6
        n=0;
end
end    