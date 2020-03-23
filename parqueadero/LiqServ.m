%Liquida el valor del servicio parqueadero
function par=cobro_par(placa)
disp('Grabar plca y hora de ingreso')
disp(placa)
load cobrop
pause (5)
fecha=0
hora=0
fecha=clock;
hora=fecha(4);
a=1;
while a<226
    if cobrop(a,1)==0
        cobrop(a,1)=placa
        cobrop(a,2)=hora
        a=226
    else
        a=a+1
    end
end
save cobrop



