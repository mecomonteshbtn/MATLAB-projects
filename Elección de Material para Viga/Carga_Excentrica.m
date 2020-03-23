function Carga_Excentrica

k=menu('CARGA EXCENTRICA','CASO I: Gadm e Ymax desconocidas','CASO II: F y Ymax desconocida','VOLVER AL MENU PRINCIPAL');
switch k,
    case 1
       clc;
       clear;
       prom={'MODULO DE ELASTICIDAD (E):[Pa,PSI]','EXCENTRICIDAD (e):[Pa,PSI]','LONGITUD DE LA COLUMNA (L):[m,in]','INERCIA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]','FUERZA APLICADA (F):[N]','DISTANCIA MAS LEJANA DESDE EL EJE CENTROIDAL (C):[m,in]'};
       name='INGRESE LOS SIGUIENTES DATOS';
       num=1;
       def={'29000000','36000','0','0','0','0','0'};
       a=inputdlg(prom,name,num,def);
       t=menu('TIPO DE APOYO','Articulado-Articulado','Empotrado-Empotrado','Empotrado-Libre','Empotrado-Articulado');
        switch t,
            case 1
                K=1;
            case 2
                K=0.5;
            case 3
                K=2;
            case 4
                K=0.7;
        end
       
       E=str2num(a{1});
       e=str2num(a{2});
       L=str2num(a{3});
       I=str2num(a{4});
       A=str2num(a{5});
       F=str2num(a{6});
       C=str2num(a{7});
       
       Le=K*L;
       r=(I/A)^0.5;
       Ymax=e*(sec(((F/(E*I))^0.5)*Le/2)-1);
       Gmax=F*(1+(e*C/(r^2))*sec(((F/(E*I))^0.5)*L/2));
       g=num2str(Gmax);
       y=num2str(Ymax);
       resul=['    Gmax= ' g ' [Pa,PSI]' '      Ymax= ' y ' [m,in]'];
       msgbox(resul,'RESULTADOS')
       
    case 2
       clc;
       clear;
       prom={'MODULO DE ELASTICIDAD (E):[Pa,PSI]','EXCENTRICIDAD (e):[Pa,PSI]','LONGITUD DE LA COLUMNA (L):[m,in]','INERCIA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]','ESFUERZO MAXIMO (Gmax):[Pa,PSI]','DISTANCIA MAS LEJANA DESDE EL EJE CENTROIDAL (C):[m,in]'};
       name='INGRESE LOS SIGUIENTES DATOS';
       num=1;
       def={'29000000','36000','0','0','0','0','0'};
       a=inputdlg(prom,name,num,def);
       t=menu('TIPO DE APOYO','Articulado-Articulado','Empotrado-Empotrado','Empotrado-Libre','Empotrado-Articulado');
        switch t,
            case 1
                K=1;
            case 2
                K=0.5;
            case 3
                K=2;
            case 4
                K=0.7;
        end
       
       E=str2num(a{1});
       e=str2num(a{2});
       L=str2num(a{3});
       I=str2num(a{4});
       A=str2num(a{5});
       Gmax=str2num(a{6});
       C=str2num(a{7});
       
       Le=K*L;
       r=(I/A)^0.5;
       F=Gmax*A/(1+(e*C/(r^2))*sec(((F/(E*I))^0.5)*Le/(2*r)));
       Ymax=e*(sec(((F/(E*I))^0.5)*Le/2)-1);
       f=num2str(F);
       y=num2str(Ymax);
       resul=['    F= ' f ' [N]' '      Ymax= ' y ' N'];
       msgbox(resul,'RESULTADOS')
       
   case 3
       n=0;
end

