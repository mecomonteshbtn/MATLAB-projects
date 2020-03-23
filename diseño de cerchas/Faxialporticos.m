function Faxial

global E reacciones grados elementos A F0 U1 CX CY F U L Uxi Uxf Uyi Uyf
    format long
    uicontrol('Style','text','position',[1290 525 60 20],'String','Faxial');
    for i=1:elementos
        K=[P*CX(i)^2+R*CY(i)^2 (P-R)*CX(i)*CY(i) -L(i)*R*CY(i)/2 -P*CX(i)^2-R*CY(i)^2 -(P-R)*CX(i)*CY(i) -L(i)*R*CY(i)/2;...
            (P-R)*CX(i)*CY(i) P*CY(i)^2+R*CX(i)^2 L(i)*R*CX(i)/2 -(P-R)*CX(i)*CY(i) -P*CY(i)^2-R*CX(i)^2 L(i)*R*CX(i)/2;...
            -L(i)*R*CY(i)/2 L(i)*R*CX(i)/2 L(i)^2*R/3 L(i)*R*CY(i)/2 -L(i)*R*CX(i)/2 L(i)^2*R/6;...
            -P*CX(i)^2-R*CY(i)^2 -(P-R)*CX(i)*CY(i) L(i)*R*CY(i)/2 P*CX(i)^2+R*CY(i)^2 (P-R)*CX(i)*CY(i) L(i)*R*CY(i)/2;...
            -(P-R)*CX(i)*CY(i) -P*CY(i)^2-R*CX(i)^2 -L(i)*R*CX(i)/2 (P-R)*CX(i)*CY(i) P*CY(i)^2+R*CX(i)^2 -L(i)*R*CX(i)/2;...
            -L(i)*R*CY(i)/2 L(i)*R*CX(i)/2 L(i)^2*R/6 L(i)*R*CY(i)/2 -L(i)*R*CX(i)/2 L(i)^2*R/3];
    
    end

    for i=1:elementos
        Uxf(i)=str2num(get(Uxf(i),'string'));
        Uxi(i)=str2num(get(Uxi(i),'string'));
        Uyf(i)=str2num(get(Uyf(i),'string'));
        Uyi(i)=str2num(get(Uyi(i),'string'));
        Faxial(i)=(A(i,5)*E/L(i))*[CX(i) CY(i)]*[Uxf(i)-Uxi(i);Uyf(i)-Uyi(i)];
    end
    Faxial=num2str(Faxial);
    uicontrol('Style','text','position',[1290 (525-22*i) 60 20],'String',Faxial);
end