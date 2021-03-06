clc; 
clear all;
clf;

global E reacciones grados elementos A N0 l CX CY F U L N l0 U1
   
    uicontrol('Style','text','position',[435 580 60 35],'String','MODULO');
    uicontrol('Style','text','position',[0 525 50 20],'String','Xinicial');
    uicontrol('Style','text','position',[52 525 50 20],'String','Yinicial');
    uicontrol('Style','text','position',[104 525 50 20],'String','Xfinal');
    uicontrol('Style','text','position',[156 525 50 20],'String','Yfinal');
    uicontrol('Style','text','position',[208 525 50 20],'String','AREA');
    uicontrol('Style','text','position',[260 525 50 20],'String','GXinicial');
    uicontrol('Style','text','position',[312 525 50 20],'String','GYinicial');
    uicontrol('Style','text','position',[364 525 50 20],'String','GZinicial');
    uicontrol('Style','text','position',[416 525 50 20],'String','GXfinal');
    uicontrol('Style','text','position',[468 525 50 20],'String','GYfinal');
    uicontrol('Style','text','position',[520 525 50 20],'String','GZfinal');
    uicontrol('Style','text','position',[572 525 50 20],'String','BASE');
    uicontrol('Style','text','position',[624 525 50 20],'String','ALTURA');
    uicontrol('Style','text','position',[676 525 50 20],'String','N0');
    uicontrol('Style','text','position',[728 525 50 20],'String','L0');
    uicontrol('Style','text','position',[780 525 50 20],'String','U1');
    uicontrol('Style','text','position',[120 580 70 35],'String','REACCIONES');
    uicontrol('Style','text','position',[5 580 110 35],'String','NUMERO DE ELEMENTOS');
    uicontrol('Style','push','position',[680 5 110 35],'String','CALCULAR','CallBack','close','CallBack','Calculosporticos');
    uicontrol('Style','push','position',[820 5 110 35],'String','CERRAR','CallBack','close');

    uicontrol('Style','text','position',[500 580 110 35],'String','GRADOS DE LIBERTAD');
        
    var=uicontrol('Style', 'popup',...
           'String', '1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30',...
           'Position', [120 572 70 25],'CallBack','reacciones=get(var,''value'');');

    Modulo=uicontrol('Style','edit','position',[435 572 60 25],'string','200');

    E=str2num(get(Modulo,'string'));

    gradoslibertad=uicontrol('Style', 'popup',...
           'String', '2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30',...
           'Position', [500 550 110 35],'CallBack',['grados=get(gradoslibertad,''value'')+1;,'...
           'for i=1:(grados-reacciones),'...
                'N0(i,1)=uicontrol(''Style'',''edit'',''position'',[676 (522-i*22) 50 20],''string'',''0'');,'...
                'l0(i,1)=uicontrol(''Style'',''edit'',''position'',[728 (522-i*22) 50 20],''string'',''0'');,'...
           'end,'...
           'for i=1:reacciones,'...
               'U1(i,1)=uicontrol(''Style'',''edit'',''position'',[780 (522-i*22) 50 20],''string'',''0'');,'...
           'end']); 

    elementoscercha=uicontrol('Style', 'popup',...
           'String', '2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30',...
           'Position', [5 550 110 35],'CallBack',['elementos=get(elementoscercha,''value'')+1;,'...
           'uicontrol(''Style'',''text'',''position'',[832 525 52*elementos 20],''String'',''L'');,'...
           'for m=1:elementos,'...
              'for t=1:6,'...
                  'l(t,m)=uicontrol(''Style'',''edit'',''position'',[(832+52*(m-1)) (522-t*22) 50 20],''string'',''0'');,'...
              'end,'...
           'end,'...
           'for i=1:elementos,'...
                'for j=1:13,'...
                    'A(j,i)=uicontrol(''Style'',''edit'',''position'',[((j-1)*52) (522-i*22) 50 20],''string'',''0'');,'...
                'end,'...
           'end']); 