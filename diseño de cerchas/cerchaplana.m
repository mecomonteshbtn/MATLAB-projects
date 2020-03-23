function [U,F1,Faxial]= cerchaplana(Mc,Mg,Mcc,Mp,Rx,A,E) %n #nodos, Mc Matriz de coordendas de los nodos y sus conectividades (Mcc)
g=3;
[n,xxxx]=size(Mc);
Ks=zeros(g*n,g*n);
[f,n2]=size(Mcc);
hold on
plot(Mc(:,1),Mc(:,2))
plot(Mc(:,1),Mc(:,2),'d')

grid
axis([-20,50,-20,20])

for i=1:1:n
    for j=1:1:n2 %n2 es el numero de conectividades que tiene un nodo
        if Mcc(i,j) ~= 0 %me pregunta si existe conectividad
        x = -Mc(i,:)+Mc(Mcc(i,j),:); % Mc(Mcc(i,j),:) busca las coordenadas del nodo que esta conectado a el nodo "i" -->final - inicial
        ux= x*(1/(x(1)^2 + x(2)^2 + x(3)^2)^0.5); % Normaliza el vector
        L= (x(1)^2 + x(2)^2 + x(3)^2)^0.5 ;

        T=[ux(1),0,0,0,0,0;ux(2),0,0,0,0,0;ux(3),0,0,0,0,0;0,0,0,ux(1),0,0;0,0,0,ux(2),0,0;0,0,0,ux(3),0,0];%trasnformadora de coordendas
        k=[A(i,j)*E/L , 0 ,0, -A(i,j)*E/L, 0,0; 0,0,0 , 0 , 0, 0 ;0,0,0 , 0 , 0, 0 ; -A(i,j)*E/L, 0,0, A(i,j)*E/L,0 ,0;0,0,0 , 0 ,0 , 0;0,0,0 , 0 , 0, 0 ];%rigidez local
  
        K1=T*k;
        t=T';
        K=K1*t; %rigidez global
        plot(Mc(i,1),Mc(Mcc(i,j),2))

K(7,:)=[Mg(i,:) , Mg(Mcc(i,j) ,:) ]; %Mg(Mcc(i,j) ,:) busca los grados de libertad del nodo al que esta conectado el nodo "i"
K(:,7)=[Mg(i,:) , Mg(Mcc(i,j) ,:) , 0 ];

for t=1:g*n
    for u=1:g*n
        for p=1:7
           if K(p,7) == u 
               for o=1:1:7
                   if K(o,7)== t
               Ks(t,u)= Ks(t,u)+K(p,o);
                   end
               end
           end
        end
    end
end
     
  
        end
    end
end

Ko=Ks(1:(Rx-1), 1:(Rx-1));
K2=Ks(Rx:g*n, 1:(Rx-1));

Y= inv(Ko)
Y2=Mp(1:(Rx-1))'

Uo=Y*(Y2')

F1=(K2)*(Uo)

U=zeros(g*n,1);
U(1:Rx-1,1)=Uo;

Faxial=[];
for i=1:1:n
    for j=1:1:n2 
        if Mcc(i,j) ~= 0 
        x = -Mc(i,:)+Mc(Mcc(i,j),:);
        ux= x*(1/(x(1)^2 + x(2)^2 + x(3)^2)^0.5);
        L= (x(1)^2 + x(2)^2 + x(3)^2)^0.5 ;
        v= (A(i,j)*E/L)*[ux(1) ux(2)]*[-U(Mg(i,1))+U(Mg(Mcc(i,j) ,1)) ; -U(Mg(i,2))+ U(Mg(Mcc(i,j) ,2))];
        Faxial = [Faxial,v];

        end
    end
end
Faxial;
