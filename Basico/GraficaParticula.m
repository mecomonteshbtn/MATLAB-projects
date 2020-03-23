syms t ;

disp('LA ACELERACION EN X ES: ')
ax=3*t-2

disp('LA ACELERACION EN Y ES: ')
ay=3*t

Vx=dsolve('Dvx=3*t-2','vx(0)=0');
disp('LA VELOCIDAD EN X ES:')
Vx

X=dsolve('DX=1.5*t^2-2*t','X(0)=0');
disp('LA TRAYECTORIA EN X ES:')
X

Vy=dsolve('Dvy=3*t','vy(0)=0');
disp('LA VELOCIDAD EN Y ES:')
Vy

Y=dsolve('DY=1.5*t^2','Y(0)=0');
disp('LA TRAYECTORIA EN Y ES:')
Y

t=0:0.02:10;
X=0.5.*t.^3-t.^2;
Y=0.5.*t.^3;

figure(1)
plot3(X,Y,t);
XLABEL('DISTANCIA EN X [m]');
YLABEL('DISTANCIA EN Y [m]');
ZLABEL('tiempo [s]');
TITLE('TRAYECTORIA DE LA PARTICULA EN EL INTERVALO [0,10] ');
grid on

t=0:10:12000;
X=0.5.*t.^3-t.^2;
Y=0.5.*t.^3;

figure(2)
plot(t,X);
XLABEL('tiempo [s]');
YLABEL('Distancia en X [m]');
TITLE('RECORRIDO EN X DE LA PARTICULA');

figure(3)
plot(t,Y);
XLABEL('tiempo [s]');
YLABEL('Distancia en X [m]');
TITLE('RECORRIDO EN X DE LA PARTICULA');

figure(4)
plot3(X,Y,t);
XLABEL('DISTANCIA X [m]');
YLABEL('DISTANCIA Y [m]');
ZLABEL('TIEMPO [s]');
TITLE('TRAYECTORIA SEGUIDA POR LA PARTICULA LA PARTICULA');
grid on