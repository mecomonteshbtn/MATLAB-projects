function acero

k=menu('ACERO ESTRUCTURADO','CASO I: Gadm e Imax desconocidas','CASO II: L desconocida','CASO III: Perfil desconocido','VOLVER AL MENU PRINCIPAL');
switch k,
    case 1
       clc;
       clear;
       prom={'MODULO DE ELASTICIDAD (E):[Pa,PSI]','RESISTENCIA A LA FLUENCIA (Gy):[Pa,PSI]','LONGITUD DE LA COLUMNA (L):[m,in]','INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]'};
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
       Gy=str2num(a{2});
       L=str2num(a{3});
       I=str2num(a{4});
       A=str2num(a{5});
       
       Cc=pi*((2*E/Gy)^0.5);
       Le=K*L;
       r=(I/A)^0.5;
       Re=Le/r;
       
       if 0<Re<Cc
           Fs=(5/3)+(3/8)*Re/Cc-(1/8)*((Re/Cc)^3);
           Gadm=(Gy/Fs)*(1-0.5*((Re/Cc)^2));
           F=Gadm/A;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [Pa,PSI]' '      F= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else if Cc<=Re<=200
           Gadm=(pi^2)*E/(1.92*(Re^2));
           F=Gadm/A;
           g=num2str(Gadm);
           f=num2str(F);
           resul=['    Gadm= ' g ' [Pa,PSI]' '      F= ' f ' N'];
           msgbox(resul,'RESULTADOS')
       else
               msgbox('              MAL DISEÑO','ERROR')
           end
       end
 case 2
       clc;
       clear;
       prom={'MODULO DE ELASTICIDAD (E):[Pa,PSI]','RESISTENCIA A LA FLUENCIA (Gy):[Pa,PSI]','FUERZA AXIAL APLICADA A LA COLUMNA (F):[N]','INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]'};
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
       Gy=str2num(a{2});
       F=str2num(a{3});
       I=str2num(a{4});
       A=str2num(a{5});
       
       Cc=pi*((2*E/Gy)^0.5);
       Gadm=F/A;
       Re=pi*((E/(1.92*Gadm))^0.5);
       
       if Re>=Cc
           Le=Re*((I/A)^0.5);
           L1=Le/K;
           L2=Le/(12*K);
           l1=num2str(L1);
           l2=num2str(L2);
           resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
           msgbox(resul,'RESULTADO')
       else
           Poli=[(F/(8*A*Gy)) -0.5 (3*F/(8*A*Gy)) 5*F/(3*A*Gy)-1];
           X=roots(Poli);
           for n=1:1:3
               D=X(n);
               if D>0
                   Le=D*Cc/((I/A)^0.5);
                   L1=Le/K;
                   L2=Le/(12*K);
                   l1=num2str(L1);
                   l2=num2str(L2);
                   resul=['      L= ' l1 '[ft]   ' l2 '[in]' ];
                   msgbox(resul,'RESULTADO')
                else
                
               end
           end
           
       end 
        
    case 3
       clc;
       clear;
       prom={'MODULO DE ELASTICIDAD (E):[Pa,PSI]','RESISTENCIA A LA FLUENCIA (Gy):[Pa,PSI]','FUERZA AXIAL APLICADA A LA COLUMNA (F):[N]','LONGITUD DE LA COLUMNA (L):[m,in]'};
       name='INGRESE LOS SIGUIENTES DATOS';
       num=1;
       def={'29000000','36000','0','0'};
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
       Gy=str2num(a{2});
       F=str2num(a{3});
       L=str2num(a{4});
              
       Cc=pi*((2*E/Gy)^0.5);
       Le=K*L;
       I=1.92*F*Le^2/(E*pi^2);
       i=num2str(I);
       le=num2str(Le);
       cc=num2str(Cc);
       
       prom={'INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]','RADIO DE GIRO (r):[m]','INGRESE EL PERFIL SELECCIONADO'};
       name=['I=' i ' [m^4,in^4]']; 
       num=1;
       def={'0','0','0','0'};
       b=inputdlg(prom,name,num,def);
       I=str2num(b{1});
       A=str2num(b{2});
       r=str2num(b{3});
       p=1;
      
       while p==1,
       Re=Le/r;
       
       if Re>=Cc
          P=['                  ' b{4}]; 
             msgbox(P,'PERFIL')
          p=0;
       else
           Poli=[(F/(8*A*Gy)) -0.5 (3*F/(8*A*Gy)) 5*F/(3*A*Gy)-1];
           X=roots(Poli);
           for n=1:1:3
               D=X(n);
               if D>0
                   Re=D*Cc;
                   n=4;
               else
                
               end
           end
           
           if Re<Cc
             P=['                  ' b{4}]; 
             msgbox(P,'PERFIL')
             p=0;
           else
               prom={'INERCIA MINIMA (I):[m^4,in^4]','AREA TRANSVERSAL (A):[m^2,in^2]','RADIO DE GIRO (r):[m]','PERFIL SELECCIONADO'};
               name='INGRESE OTROS VALORES PARA:';
               num=1;
               def={'0','0','0'};
               b=inputdlg(prom,name,num,def);
               I=str2num(b{1});
               A=str2num(b{2});
               r=str2num(b{3});
               p=1;
           end
       end
       end

    case 4
        n=0;
 end
      
