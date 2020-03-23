function [cantidad,nombre,apellido,pais]=inscribir;

global cantidad nombre apellido pais

clc;
cantidad=input('ingrese el numero de deportistas a inscribir: ');


if cantidad>20
    errordlg('el maximo de deportistas debe ser 20')
    cantidad=0;
end
for i=1:cantidad
    disp(['deportista numero ' num2str(i)])
    nombre{i}=input('ingrese el nombre:','s');
    apellido{i}=input('ingrese el apellido:','s');
    pais{i}=input('ingrese el pais:','s');
end