function MENU;
    clc;
    clear all;

    f0='exp(-(X^2)+5)-X*cos(3*X-4)-8*(X^2)-7*X+3';
    g0='exp(-(X^2)+5)-X*cos(3*X-4)-8*(X^2)-7*X+3+X';
    df0='3*X*sin(3*X-4)-cos(3*X-4)-16*X-2*X*exp(5-X^2)-7';
    d2f0='6*sin(3*X - 4) - 2*exp(5 - X^2) + 9*X*cos(3*X - 4) + 4*X^2*exp(5 - X^2) - 16';
    xo0='-1';
    a0='-1.67';
    b0='-1.669';
    Tol0='10^-7';
    N0='100';

    x0='[1 2 3 4]';
    y0='[3 4 9 -1]';

    A0='[10 0 -3;4 13 -2;5 6 -12]';
    B0='[1;-2;3]';
    xi0='[0;0;0]';
    w0='0.5';
    
    salir=0;
    while salir==0
        Titulo='MENU PRINCIPAL';%% MODIFICAR %% PONER UN MENU CON CADA TEMA UNA UNICA TABLA POR TODOS LOS METODS;
        Metodos={'ECUACIONES NO LINEALES','SISTEMAS DE ECUACIONES','INTERPOLACION','SALIR'};
        s=menu(Titulo,Metodos);
        
        switch s
            case 1
                [f0,g0,df0,d2f0,xo0,a0,b0,Tol0,N0]=EcuacionesNoLineales(f0,g0,df0,d2f0,xo0,a0,b0,Tol0,N0);
            case 2
                [A0,B0,xi0,w0,Tol0,N0]=Sistemas_de_Ecuaciones(A0,B0,xi0,w0,Tol0,N0);
            case 3
                [x0,y0]=Interpolacion(x0,y0);
            case 4
                salir=1;
                close all;
        end
    end
end