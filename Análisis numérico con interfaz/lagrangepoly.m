function lagrangepoly
clc 
clear

prom={'ingrese los xi','ingrese los yi'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'0','0'};
per=inputdlg(prom,name,num,def);
xi=str2num(per{1});
yi=str2num(per{2});

n=length(xi);
f=zeros(1,n);
Ilog=logical(eye(n));
for i=1:n
  Pi=poly(xi(~Ilog(i,:)));
  Pi=Pi./polyval(Pi,xi(Ilog(i,:)));
  Pi=Pi.*yi(Ilog(i,:));
  f=f+Pi;
end
Pi, f
end