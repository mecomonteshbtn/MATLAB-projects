function principal

clc;
clear all;
salir=1;
while salir==1
    k=menu('LEVANTAMIENTO DE PESAS','INSCRIBIR','INGRESAR PESOS','MOSTRAR CAMPEONES','SALIR');

    switch k
        case 1
            [cantidad,nombre,apellido,pais]=inscribir;
            
        case 2
            [mayor_arranque,mayor_envion,peso_total]=levantamientos(cantidad,nombre,apellido,pais);
            [campeonE,campeonA,campeonT,campeon_envion,campeon_arranque,campeon_total]=mayor_levantador(mayor_envion,mayor_arranque,peso_total,cantidad);
           
        case 3
            campeon(campeonE,campeonA,campeonT,campeon_envion,campeon_arranque,campeon_total,nombre,apellido,pais)

        case 4
            salir=0;
            
    end
end