function [t,w] = mod(f,a,b,ya,N)

h=(b-a)/N;
w= zeros(1,N+1);
t=a:h:b;
w(1)=ya;

for j=1:N
    w(j+1)=w(j)+(h/12)*(23*f(t(j),w(j))-16*f(t(j-1),w(j-1))+5*f(t(j-2),w(j-2)));
end
t=t'
w=w'
end
