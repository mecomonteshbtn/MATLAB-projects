function Calculoscerchas   

global E reacciones grados elementos A F0 U1 CX CY F U L Uxi Uxf Uyi Uyf
   format long
    
    A=A';
    
    for t=1:reacciones
        U1(t)=str2num(get(U1(t),'string'));
    end
    
    for p=1:(grados-reacciones)
         F0(p)=str2num(get(F0(p),'string'));
    end
    
    for i=1:elementos
        for j=1:9
            A(i,j)=str2num(get(A(i,j),'string'));
        end
    end
    
    KGlobal=zeros(grados);
    
    for i=1:elementos
        X(i)=A(i,3)-A(i,1);
        Y(i)=A(i,4)-A(i,2);
        L(i)=(X(i)^2+Y(i)^2)^0.5;
        CX(i)=X(i)/L(i);
        CY(i)=Y(i)/L(i);
        K=(A(i,5)*E/L(i)).*[CX(i)^2 CX(i)*CY(i) -CX(i)^2 -CX(i)*CY(i);CX(i)*CY(i) CY(i)^2 -CX(i)*CY(i) -CY(i)^2;-CX(i)^2 -CX(i)*CY(i) CX(i)^2 CX(i)*CY(i);-CX(i)*CY(i) -CY(i)^2 CX(i)*CY(i) CY(i)^2];
        for j=1:4
            a1=A(i,j+5);
            for k=1:4
                b1=A(i,k+5);
                KGlobal(b1,a1)=KGlobal(b1,a1)+K(j,k);
            end
        end
    end
    
    prom=cell(1,elementos);
    def=cell(1,elementos);
    for i=1:elementos
        prom{i}=['K' num2str(i) num2str(i)];
        def{i}=num2str(KGlobal(i,i));
    end
    num=1;
    name='DIAGONAL DE K GLOBAL';
    a=inputdlg(prom,name,num,def);
        
    for i=1:elementos
        KGlobal(i,i)=str2num(a{i});
    end
           
    K0=KGlobal(1:(grados-reacciones),1:(grados-reacciones))
    K1=KGlobal(1:(grados-reacciones),(grados-reacciones+1):grados)
    K2=KGlobal((grados-reacciones+1):grados,1:(grados-reacciones))
    K3=KGlobal((grados-reacciones+1):grados,(grados-reacciones+1):grados)

    U0=(inv(K0))*(F0-(K1*U1))
    F1=(K2*U0)+(K3*U1)
    U=[U0;U1]
    F=[F0;F1]
    resultadoF=num2str(F);
    resultadoU=num2str(U);
    uicontrol('Style','text','position',[760 (520-14*grados) 60 (14*grados)],'String',resultadoF);
    uicontrol('Style','text','position',[830 (520-14*grados) 60 (14*grados)],'String',resultadoU);
    uicontrol('Style','text','position',[1000 520 60 20],'String','Faxial');
    
    for i=1:elementos
        a=A(i,6);
        Uxi=U(a);
        a=A(i,7);
        Uyi=U(a);
        a=A(i,8);
        Uxf=U(a);
        a=A(i,9);
        Uyf=U(a);
        Faxial(i,1)=(A(i,5)*E/L(i))*[CX(i) CY(i)]*[Uxf-Uxi;Uyf-Uyi];
    end
     Faxial=num2str(Faxial);
     uicontrol('Style','text','position',[1000 (525-14*grados) 100 (14*grados)],'String',Faxial);
end