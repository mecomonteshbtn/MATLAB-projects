function [A0,B0,xi0,w0,Tol0,N0]=Sistemas_de_Ecuaciones(A0,B0,xi0,w0,Tol0,N0);
    
  salirs=0;
  while salirs==0
    Titulo='SISTEMAS DE ECUACIONES';%% MODIFICAR %% PONER UN MENU CON CADA TEMA UNA UNICA TABLA POR TODOS LOS METODS;
    Metodos={'GAUSS SIMPLE', 'PIVOTEO PARCIAL', 'PiVOTEO TOTAL', 'CROUT', 'DOOLITTLE', 'CHOLESKY', 'GAUSS RELAJADO','JACOBI RELAJADO','SALIR'};
    s=menu(Titulo,Metodos);

    switch s
      case 1
        [A0,B0]=GaussSimple(A0,B0);
      case 2
        [A0,B0]=PivoteoParcial(A0,B0);
      case 3 
        [A0,B0]=PivoteoTotal(A0,B0);
      case 4  
        [A0,B0]=Crout(A0,B0);
      case 5  
        [A0,B0]=Doolittle(A0,B0);
      case 6 
        [A0,B0]=Cholesky(A0,B0);
      case 7
        [A0,B0,xi0,w0,Tol0,N0]=SORGauss(A0,B0,xi0,w0,Tol0,N0);
      case 8
        [A0,B0,xi0,w0,Tol0,N0]=SORJacobi(A0,B0,xi0,w0,Tol0,N0);
      case 9
        salirs=1;
     end
    end
end