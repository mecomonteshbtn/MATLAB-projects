%MENU OPERACIONES
clc
operacion=0;

while operacion <9
    disp('1. Definicion de matriz en ceros')
    disp('2. Cargar la matriz pico y placa semanal')
    disp('3. Ingreso parqueadero')
    disp('4. Liquidar servicio parqueadero')
    disp('5. Retirar el vehiculo del parqueadero ')
    disp('9 salir')
    operacion=input('Elija una opcion: ');
    disp('Resultado: ')
    switch operacion;
        case 1
            Matriz_ceros
        case 2
            PicoPlaca
        case 3
            Ingresop
        case 4
            LiqServ
        case 5
            Retirarp
        case 9
            disp('HA TERMINADO EL PROCESO')
            
        otherwise
            disp('No has elegido bien')
    end
end
  