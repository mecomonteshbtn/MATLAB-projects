%DISEÑO DE FILTROS
%TRABAJO FINAL CIRCUITOS II
%ROBINSON MONTES GOMEZ

function control();

filt=findobj('tag','filt');
filt=get(filt,'value');
fcia1=findobj('tag','fcia1');
fcia2=findobj('tag','fcia2');
tfcia2=findobj('tag','tfcia2');
t2fcia2=findobj('tag','t2fcia2');
uni2=findobj('tag','uni2');


switch filt
    
    case 1,
   
         set(fcia1,'visible','on');
         set(fcia1,'string',0 );
         set(fcia2,'visible','off');
         set(tfcia2,'visible','off');
         set(t2fcia2,'visible','off');
         set(uni2,'visible','off');

    case 2
   
         set(fcia1,'visible','on');
         set(fcia1,'string',0);
         set(fcia2,'visible','off');
         set(tfcia2,'visible','off');
         set(t2fcia2,'visible','off');
         set(uni2,'visible','off');
   
    case 3
   
         set(fcia1,'visible','on');
         set(fcia1,'string',0);
         set(fcia2,'visible','on');
         set(fcia2,'string',0);
         set(tfcia2,'visible','on');
         set(t2fcia2,'visible','on');
         set(uni2,'visible','on');
   
    case 4
   
          set(fcia1,'visible','on');
          set(fcia1,'string',0);
          set(fcia2,'visible','on');
          set(fcia2,'string',0);
          set(tfcia2,'visible','on');
          set(t2fcia2,'visible','on');
          set(uni2,'visible','on');
 
     end
     
met=findobj('tag','met');
met=get(met,'value');


 switch met
     
     case 1
         W1==2*pi*fcia1
         E==(10^(0.1*max)-1)^(1/2)
         B==((10^(0.1*min)-1)^(1/2))/E
         N==(log(B))/(log10(1.5))
         [numerador, denominador]=chevy1(N, max, W1) 
         
         
     