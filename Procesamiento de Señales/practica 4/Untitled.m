clear;                              % Borra todas las variables 
clf;                                %borra todas las figuras
clc;
N = input('INGRESE EL NUMERO DE COEFICIENTES: '); 
wo = pi;                          % Frec fundamental en rad/s
c0 = 0;                            
t = -3:0.01:3;                   % definición de la escala de tiempo

                        % definir grafica

% yexp: calcula la SF en forma exp-compleja
yexp = c0*ones(size(t));            % inicializa yexp a c0

for k = -N:2:N,                    
  cn = 2/(j*k*wo);                 % calcula los coeficientes de la SF
  yexp = yexp + real(cn*exp(j*k*wo*t)); 
end

subplot(2,2,1)
plot([-3 -2 -2 -1 -1  0 0 1  1  2 2 3],...    % definición de  y(t) onda cuadrada
    [-1 -1  1  1 -1 -1 1 1 -1 -1 1 1], ':');
hold;
plot(t,yexp);			    % plot SF exp 
xlabel('t (sg)'); ylabel('y(t)');
title([' Serie de Fourier en forma exp con N = ',num2str(N)]);
hold;

% yt: calcula la SF en forma trigonometrica

yt = c0*ones(size(t));             % Inicializa yt a c0
for k = 1:2:N,                    
  cn = 2/(j*k*wo);               
  yt = yt + 2*abs(cn)*cos(k*wo*t+angle(cn)); 
end

subplot(2,2,3)
plot([-3 -2 -2 -1 -1  0 0 1  1  2 2 3],[-1 -1  1  1 -1 -1 1 1 -1 -1 1 1], ':');
hold;                               % plot SF en forma trigonometrica
plot(t,yt);
xlabel('t (sg)'); ylabel('y(t)');
ttle = ['Serie de Fourier en forma Trigonometrica con N = ',num2str(N)];
title(ttle);
grid
hold;

% Espectro en amplitud a partir de la SF exp

                         
subplot(2,2,2)
stem(0,c0);                        % plot c0 en kwo = 0
hold;
for k = -N:2:N,                   
  cn = 2/(j*k*wo);                
  stem(k*wo,abs(cn))               % plot |cn| vs kwo
end
for k = -N+1:2:N-1,     

          
  cn = 0;                          
  stem(k*wo,abs(cn));              % plot |cn| vs kwo
end

xlabel('w (rad/s)')
ylabel('|cn|')

ttle = ['Espectro de magnitud con N = ',num2str(N)];
title(ttle); 
grid;
hold;

% Dibujar la fase de la SF en forma exp

subplot(2,2,4)
stem(0,angle(c0)*180/pi);          % plot Angulo de c0 en kwo = 0
hold;
for n = -N:2:N,                    
  cn = 2/(j*n*wo);                 
  stem(n*wo,angle(cn)*180/pi);     % plot |cn| vs kwo
end
for n = -N+1:2:N-1,                
  cn = 0;                         
  stem(n*wo,angle(cn)*180/pi);     
end

xlabel('w (rad/s)')
ylabel('Angulo  (cn) (Grados)')
ttle = ['Espectro de Fase con N = ',num2str(N)];
title(ttle);
grid;
hold;
 


