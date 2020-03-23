function Calculosporticos   

global E reacciones grados elementos A N0 l CX CY F U L  N l0 U1
   format long
    A=A';
            
    for t=1:(grados-reacciones)
        N0(t,1)=str2num(get(N0(t,1),'string'));
        l0(t,1)=str2num(get(l0(t,1),'string'));
    end
    
    for t=1:reacciones
        U1(t,1)=str2num(get(U1(t,1),'string'));
    end
    
    for m=1:elementos
        for t=1:6
            l(t,m)=str2num(get(l(t,m),'string'));
        end
    end
    
    for i=1:elementos
        for j=1:13
            A(i,j)=str2num(get(A(i,j),'string'));
        end
    end
    
    F0=N0-l0;
    l1=zeros(reacciones,1);
    K=zeros(elementos);
    KGlobal=zeros(grados);
    
    for i=1:elementos
        I(i)=A(i,12)*A(i,13)^3/12;
        X(i)=A(i,3)-A(i,1);
        Y(i)=A(i,4)-A(i,2);
        L(i)=(X(i)^2+Y(i)^2)^0.5;
        CX(i)=X(i)/L(i);
        CY(i)=Y(i)/L(i);
        P=A(i,5)*E/L(i);
        R=12*E*I(i)/L(i)^3;
        K=[P*CX(i)^2+R*CY(i)^2 (P-R)*CX(i)*CY(i) -L(i)*R*CY(i)/2 -P*CX(i)^2-R*CY(i)^2 -(P-R)*CX(i)*CY(i) -L(i)*R*CY(i)/2;...
            (P-R)*CX(i)*CY(i) P*CY(i)^2+R*CX(i)^2 L(i)*R*CX(i)/2 -(P-R)*CX(i)*CY(i) -P*CY(i)^2-R*CX(i)^2 L(i)*R*CX(i)/2;...
            -L(i)*R*CY(i)/2 L(i)*R*CX(i)/2 L(i)^2*R/3 L(i)*R*CY(i)/2 -L(i)*R*CX(i)/2 L(i)^2*R/6;...
            -P*CX(i)^2-R*CY(i)^2 -(P-R)*CX(i)*CY(i) L(i)*R*CY(i)/2 P*CX(i)^2+R*CY(i)^2 (P-R)*CX(i)*CY(i) L(i)*R*CY(i)/2;...
            -(P-R)*CX(i)*CY(i) -P*CY(i)^2-R*CX(i)^2 -L(i)*R*CX(i)/2 (P-R)*CX(i)*CY(i) P*CY(i)^2+R*CX(i)^2 -L(i)*R*CX(i)/2;...
            -L(i)*R*CY(i)/2 L(i)*R*CX(i)/2 L(i)^2*R/6 L(i)*R*CY(i)/2 -L(i)*R*CX(i)/2 L(i)^2*R/3];
        for j=1:6
            a1=A(i,j+5);
            for k=1:6
                b1=A(i,k+5);
                KGlobal(b1,a1)=KGlobal(b1,a1)+K(j,k);
            end
        end
    end
   
    prom=cell(1,elementos);
    def=cell(1,elementos);
    for i=1:grados
        prom{i}=['K' num2str(i) num2str(i)];
        def{i}=num2str(KGlobal(i,i));
    end
    num=1;
    name='DIAGONAL DE K GLOBAL';
    a=inputdlg(prom,name,num,def);
        
    for i=1:grados
        KGlobal(i,i)=str2num(a{i});
    end
    
    K0=KGlobal(1:(grados-reacciones),1:(grados-reacciones));
    K1=KGlobal(1:(grados-reacciones),(grados-reacciones+1):grados);
    K2=KGlobal((grados-reacciones+1):grados,1:(grados-reacciones));
    K3=KGlobal((grados-reacciones+1):grados,(grados-reacciones+1):grados);

    U0=(inv(K0))*(F0-(K1*U1));
    F1=(K2*U0)+(K3*U1);
    U=[U0;U1];
    F=[F0;F1];
    N1=F1-l1;
    N=[N0;N1];
        
    for i=1:elementos
        for j=1:6
            a=A(i,j+5);
            u(j,i)=U(a,1);
        end
    end
    uicontrol('Style','text','position',[160 300 52*elementos  20],'String','F');
    uicontrol('Style','text','position',[170+52*elementos 300 52*elementos 20],'String','N');
    uicontrol('Style','text','position',[180+104*elementos 300 52*elementos 20],'String','f');
    
    for i=1:elementos
        P=A(i,5)*E/L(i);
        R=12*E*I(i)/L(i)^3;
        K=[P*CX(i)^2+R*CY(i)^2 (P-R)*CX(i)*CY(i) -L(i)*R*CY(i)/2 -P*CX(i)^2-R*CY(i)^2 -(P-R)*CX(i)*CY(i) -L(i)*R*CY(i)/2;...
            (P-R)*CX(i)*CY(i) P*CY(i)^2+R*CX(i)^2 L(i)*R*CX(i)/2 -(P-R)*CX(i)*CY(i) -P*CY(i)^2-R*CX(i)^2 L(i)*R*CX(i)/2;...
            -L(i)*R*CY(i)/2 L(i)*R*CX(i)/2 L(i)^2*R/3 L(i)*R*CY(i)/2 -L(i)*R*CX(i)/2 L(i)^2*R/6;...
            -P*CX(i)^2-R*CY(i)^2 -(P-R)*CX(i)*CY(i) L(i)*R*CY(i)/2 P*CX(i)^2+R*CY(i)^2 (P-R)*CX(i)*CY(i) L(i)*R*CY(i)/2;...
            -(P-R)*CX(i)*CY(i) -P*CY(i)^2-R*CX(i)^2 -L(i)*R*CX(i)/2 (P-R)*CX(i)*CY(i) P*CY(i)^2+R*CX(i)^2 -L(i)*R*CX(i)/2;...
            -L(i)*R*CY(i)/2 L(i)*R*CX(i)/2 L(i)^2*R/6 L(i)*R*CY(i)/2 -L(i)*R*CX(i)/2 L(i)^2*R/3];
        
        T=[CX(i) CY(i) 0 0 0 0;...
           -CY(i) CX(i) 0 0 0 0;...
           0 0 1 0 0 0;...
           0 0 0 CX(i) CY(i) 0;...
           0 0 0 -CY(i) CX(i) 0;...
           0 0 0 0 0 1];
        Uaux=u(:,i);
        F=K*Uaux;
        N=l(:,i)+K*Uaux;
        f=T*N;
        resultadoF=num2str(F);
        resultadoN=num2str(N);
        resultadof=num2str(f);
        uicontrol('Style','text','position',[160+52*(i-1) (40) 70 200],'String',resultadoF);
        uicontrol('Style','text','position',[170+52*elementos+52*(i-1) (40) 70 200],'String',resultadoN);
        uicontrol('Style','text','position',[180+104*elementos+52*(i-1) (40) 70 200],'String',resultadof);
        
    end   
    
    resultadoF=num2str(F);
    resultadoU=num2str(U);
    resultadoN=num2str(N);
    uicontrol('Style','text','position',[0 300 50 20],'String','N');
    uicontrol('Style','text','position',[52 300 50 20],'String','F');
    uicontrol('Style','text','position',[104 300 50 20],'String','U');
    uicontrol('Style','text','position',[0 (295-14*grados) 50 (14*grados)],'String',resultadoF);
    uicontrol('Style','text','position',[52 (295-14*grados) 50 (14*grados)],'String',resultadoU);
    uicontrol('Style','text','position',[104 (295-14*grados) 50 (14*grados)],'String',resultadoN);
    
    
    
end