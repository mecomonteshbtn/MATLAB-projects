function [mayor_arranque,mayor_envion,peso_total]=levantamientos(cantidad,nombre,apellido,pais)

global mayor_arranque mayor_envion peso_total
              
clc;
mayor_envion=zeros(cantidad);
mayor_arranque=zeros(cantidad);

for i=1:cantidad
    disp([nombre(i) apellido(i) 'de' pais(i)])
    disp('MODALIDAD ENVION')
    for j=1:3
        peso_envion(j)=input(['intento ' num2str(j) ': ']);
    
        if peso_envion(j)>mayor_envion(i)
            mayor_envion(i)=peso_envion(j);
        end
    end
    
        disp('MODALIDAD ARRANQUE')
    for j=1:3
        peso_arranque(j)=input(['intento ' num2str(j) ': ']);
    
        if peso_arranque(j)>mayor_arranque(i)
            mayor_arranque(i)=peso_arranque(j);
        end
    end 
end

peso_total=mayor_envion+mayor_arranque;