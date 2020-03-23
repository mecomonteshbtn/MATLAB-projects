function Aluminio_6061

k=menu('ALUMINIO 6061','CASO I: Gadm y Fmax desconocidas','CASO II: L desconocida','VOLVER AL MENU PRINCIPAL');
switch k,
    case 1
       clc;
       clear;
       prom={'LONGITUD DE LA COLUMNA (L):[m,in]','INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]'};
       name='INGRESE LOS SIGUIENTES DATOS';
       num=1;
       def={'0','0','0'};
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
       
       L=str2num(a{1});
       I=str2num(a{2});
       A=str2num(a{3});
       
       Le=K*L;
       r=(I/A)^0.5;
       Re=Le/r;
       
       if 0<Re<=9.5
           Gadm=131;
           F=131000000*A;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [MPa]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else if 9.5<Re<66
           Gadm=139-0.868*Re;
           F=Gadm*A*1000000;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [MPa]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else 
           Gadm=351000/(Re^2);
           F=Gadm*A*1000000;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [MPa]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
               
           end
       end
        
    case 2
       clc;
       clear;
       prom={'FUERZA AXIAL APLICADA A LA COLUMNA (F):[N]','INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]'};
       name='INGRESE LOS SIGUIENTES DATOS';
       num=1;
       def={'20000','0','0'};
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
       
       F=str2num(a{1});
       I=str2num(a{2});
       A=str2num(a{3});
       
       Gadm=F/A;
       Re=(351000000000/Gadm)^0.5;
       r=(I/A)^0.5;
       Res=(139-(Gadm/1000000))/0.868;
                  
       if Re>=66
           Le=Re*r;
           L1=Le/K;
           L2=Le/(K*12);
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')

       else if 9.5<Res<66
           Le=r*Res;
           L1=Le/K;
           L2=Le/(K*12);
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')
       else
           Le=9.5*r;
           L1=Le/K;
           L2=Le/(K*12);
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')
           end 
       end
       case 3
           n=0;
end
