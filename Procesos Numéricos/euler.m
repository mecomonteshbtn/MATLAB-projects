function [t,w] = euler(f,a,b,ya,N)

h=(b-a)/N;
w= zeros(1,N+1);
t=a:h:b;
w(1)=ya;

for j=1:N
    w(j+1)=w(j)+h*f(t(j),w(j));
end
t=t'
w=w'
end
