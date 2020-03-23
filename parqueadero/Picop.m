%Crea tabla pico y placa
clc
i=0;
Picop=0;
cont=1;

for i=1:1:5
    
    dia=input('ingrese el dia de la semana:');
    primer=input('ingrese el primer digito de la placa:');
    segundo=input('ingrese el segundo digito de la placa:');
    
    Picop(i,2)=primer;
    Picop(i,3)=segundo;
    cont=cont+1;
    Picop(i,1)=cont
    
end
Save Picop