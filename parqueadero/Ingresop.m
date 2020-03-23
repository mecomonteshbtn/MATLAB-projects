% Controla el ingreso al parqueadero

load Picop
load Parq
clc
dia=0;
w_ctrol=0;
diap=0;
diap=weekday(date)
ult_dig=0;
fecha=0;
hora=0;
placa=input('Ingrese numero de la placa: ')
ult_dig=mod(placa,10)


fecha=clock
diactrl=fecha(3)

while dia_real==dia_ctrol
    placa=input('Ingrese numero de placa')
    ult_dig=mod(placa, 10)
if Picop(diap,2)~=ult_dig && Picop(diap,3)~=ult_dig
    for i=1:1:15           %I
            for k=1:1:15
                if Parq(i,k)==0
                    Parq(i,k)=placa;       %parq o m?
                    disp(['La celda asignada es: ' num2str(i),num2str(k)])
                    w_ctrol=1
                    %cobro_par(placa)---- %cambiar !!! es solo para probar
                    break
                end
            end
            if w_ctrol==1
                w_ctrol=0
                break
            end
    end
else
    disp('Es dia de PICO Y PLACA, No se puede ingresar: ')
end
end
fecha=clock
dia_real=fecha(3)

         
            


    
    
