function [f0,g0,df0,d2f0,xo0,a0,b0,Tol0,N0]=EcuacionesNoLineales(f0,g0,df0,d2f0,xo0,a0,b0,Tol0,N0)

    salirN=0;
    while salirN==0
        Titulo='ECUACIONES NO LINEALES';%% MODIFICAR %% PONER UN MENU CON CADA TEMA UNA UNICA TABLA POR TODOS LOS METODS;
        Metodos={'BUSQUEDAS INCREMENTALES','BISECCION','REGLA FALSA','SECANTE','NEWTON','PUNTO FIJO','RAICES MULTIPLES','SALIR'};
        s=menu(Titulo,Metodos);
        switch s
            case 1
                [f0,N0]=Busquedas(f0,N0);
            case 2
                [f0,a0,b0,Tol0,N0]=Biseccion(f0,a0,b0,Tol0,N0);
            case 3
                [f0,a0,b0,Tol0,N0]=Regla_Falsa(f0,a0,b0,Tol0,N0);
            case 4
                [f0,a0,b0,Tol0,N0]=Secante(f0,a0,b0,Tol0,N0);
            case 5
                [f0,df0,xo0,Tol0,N0]=Newton(f0,df0,xo0,Tol0,N0);
            case 6
                [f0,g0,xo0,Tol0,N0]=Punto_fijo(f0,g0,xo0,Tol0,N0);
            case 7
                [f0,df0,d2f0,xo0,Tol0,N0]=Multiples(f0,df0,d2f0,xo0,Tol0,N0);
            case 8
                salirN=1;
        end
    end
end