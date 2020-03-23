function [x0,y0]=Interpolacion(x0,y0);
   
    salirI=0;
    while salirI==0
        Titulo='INTERPOLACION';%% MODIFICAR %% PONER UN MENU CON CADA TEMA UNA UNICA TABLA POR TODOS LOS METODS;
        Metodos={'POLINOMIO DE NEWTON','POLINOMIO DE LAGRANGE','SPLINE LINEAL','SPLINE CUADRATICO','SPLINE CUBICO','NEVILLE','SALIR'};
        s=menu(Titulo,Metodos);
        switch s
            case 1
                [x0,y0]=DifDivNewton(x0,y0);
            case 2
                [x0,y0]=Lagrange(x0,y0);
            case 3 
                [x0,y0]=SPlineLineal(x0,y0);
            case 4  
                [x0,y0]=SPlineCuadratico(x0,y0);
            case 5  
                [x0,y0]=SPlineCubico(x0,y0);
            case 6 
                [x0,y0]=Neville(x0,y0);
            case 7
                salirI=1;
        end
        
    end
end