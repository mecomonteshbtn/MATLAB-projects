clc
clear all

[Mc]= xlsread('C:\Users\Zspectre\Desktop\Universidad\2013-1\Structuras\Programa\Calculo_de_cerchas\Test_de_cerchas.xlsx','Coordenadas');
[Mg]= xlsread('C:\Users\Zspectre\Desktop\Universidad\2013-1\Structuras\Programa\Calculo_de_cerchas\Test_de_cerchas.xlsx','Grados_de_libertad');
[Mcc]= xlsread('C:\Users\Zspectre\Desktop\Universidad\2013-1\Structuras\Programa\Calculo_de_cerchas\Test_de_cerchas.xlsx','Conectividades');
[Mp]= xlsread('C:\Users\Zspectre\Desktop\Universidad\2013-1\Structuras\Programa\Calculo_de_cerchas\Test_de_cerchas.xlsx','Cargas_en_los_nodos');
[Rx]= xlsread('C:\Users\Zspectre\Desktop\Universidad\2013-1\Structuras\Programa\Calculo_de_cerchas\Test_de_cerchas.xlsx','Fila_de_reacciones');
[A]= xlsread('C:\Users\Zspectre\Desktop\Universidad\2013-1\Structuras\Programa\Calculo_de_cerchas\Test_de_cerchas.xlsx','Area');
[E]= xlsread('C:\Users\Zspectre\Desktop\Universidad\2013-1\Structuras\Programa\Calculo_de_cerchas\Test_de_cerchas.xlsx','Modulo');
v=[23 24 13 15 17 19 21];
Almacen_reacciones=[];
Almacen_internas=[];
for i=1:1:7
Mp(v(i))=-1;
[U,F,Fa]= cerchaplana(Mc,Mg,Mcc,Mp,Rx,A,E);
Almacen_reacciones=[Almacen_reacciones,F];
Almacen_internas=[Almacen_internas;Fa(1:4)];
Mp(v(i))=0;
end