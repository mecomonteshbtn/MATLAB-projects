x= [ones(1,8),-ones(1,8)];
figure(1)
for i=1:63
x=[x,ones(1,8),-ones(1,8)];
end
z=size(x);          %determina el tamaño de arreglo
z=z(2);              %Toma la longitud del arreglo 2da columna
subplot(3,1,1)  %muestra una figura de 3
plot(x);
axis([0 z,-2 2]);   %Define el espacio para visualizar x
grid
y=fft(x);
f=0:1/1024:0.5;
subplot(3,1,2)		% muestra figura 2 de 3
plot(f,abs(y(1:513)));
grid
subplot(3,1,3)		% muestra figura 2 de 3	
plot(f,angle(y(1:513)));
grid