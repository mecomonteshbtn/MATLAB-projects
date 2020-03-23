function Madera

k=menu('MADERA','CASO I: Gadm y Fmax desconocidas','CASO II: L desconocida','VOLVER AL MENU PRINCIPAL');
switch k,
    case 1
       clc;
       clear;
       prom={'MODULO DE ELASTICIDAD (E):[Pa,PSI]','ESFUERZO ADMISIBLE (Gadmi):[Pa,PSI]','LONGITUD DE LA COLUMNA (L):[m,in]','INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]'};
       name='INGRESE LOS SIGUIENTES DATOS';
       num=1;
       def={'29000000','36000','0','0','0'};
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
       Gadmi=str2num(a{2});
       L=str2num(a{3});
       I=str2num(a{4});
       A=str2num(a{5});
       
       Ke=2.324*((E/Gadmi)^0.5);
       Le=K*L;
       r=(I/A)^0.5;
       Re=Le/r;
       
       if 0<Re<=38
           Gadm=Gadmi;
           F=Gadm*A;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [Pa,PSI]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else if 38<Re<=Ke
           Gadm=Gadmi*(1-(1/3)*((Re/Ke)^4));
           F=Gadm*A;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [Pa,PSI]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else if Ke<Re<=173
           Gadm=(pi^2)*E/(2.74*(Re^2));
           F=Gadm*A;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [Pa,PSI]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else
           msgbox('              MAL DISEÑO','ERROR')
           end
           end
       end
        
    case 2
       clc;
       clear;
       prom={'MODULO DE ELASTICIDAD (E):[Pa,PSI]','ESFUERZO ADMISIBLE (Gadmi):[Pa,PSI]','FUERZA AXIAL APLICADA A LA COLUMNA (F):[N]','INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]'};
       name='INGRESE LOS SIGUIENTES DATOS';
       num=1;
       def={'29000000','36000','20000','0','0'};
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
       Gadmi=str2num(a{2});
       F=str2num(a{3});
       I=str2num(a{4});
       A=str2num(a{5});
       
       Ke=2.324*((E/Gadmi)^0.5);
       Gadm=F/A;
       Re=pi*((E/(2.74*Gadm))^0.5);
       r=(I/A)^0.5;
       Res=Ke*((3*(1-(Gadm/Gadmi)))^0.25);
       
       if Ke<Re<=173
           Le=Re*r;
           L1=Le*K;
           L2=Le*K/12;
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')
       else if 38<Res<=Ke
           Le=r*Res;
           L1=Le*K;
           L2=Le*K/12;
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')
       else
           Le=38*r;
           L1=Le*K;
           L2=Le*K/12;
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')
           end 
       end
       case 3
           n=0;
 end