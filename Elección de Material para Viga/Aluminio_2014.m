function Aluminio_2014

k=menu('ALUMINIO 2014-T6 (ALCLAD)','CASO I: Gadm y Fmax desconocidas','CASO II: L desconocida','VOLVER AL MENU PRINCIPAL');
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
       
       if 0<Re<=12
           Gadm=193;
           F=193000000*A;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [MPa]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else if 12<Re<55
           Gadm=212-1.585*Le/r;
           F=Gadm*A*1000000;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [MPa]' '      Fmax= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else 
           Gadm=372000/(Re^2);
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
       Re=(372000000000/Gadm)^0.5;
       r=(I/A)^0.5;
       Res=(212-(Gadm/1000000))/1.585;
                  
       if Re>=55
           Le=Re*r;
           L1=Le/K;
           L2=Le/(K*12);
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')

       else if 12<Res<55
           Le=r*Res;
           L1=Le/K;
           L2=Le/(K*12);
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')
       else
           Le=12*r;
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
