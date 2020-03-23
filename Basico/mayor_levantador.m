function [campeonE,campeonA,campeonT,campeon_envion,campeon_arranque,campeon_total]=mayor_levantador(mayor_envion,mayor_arranque,peso_total,cantidad);

global campeonE campeonA campeonT campeon_envion campeon_arranque campeon_total

campeon_envion=0;
campeon_arranque=0;
campeon_total=0;

 for i=1:cantidad
     
     if mayor_envion(i)>campeon_envion
       campeon_envion=mayor_envion(i);
       campeonE=i;
    end 

    if mayor_arranque(i)>campeon_arranque
       campeon_arranque=mayor_arranque(i);
       campeonA=i;
    end 

    if peso_total(i)>campeon_total
       campeon_total=peso_total(i);
       campeonT=i;
    end
 end