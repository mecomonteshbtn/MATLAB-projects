function neville
clc
clear 

prom={'ingrtese los xi','ingrese yi','ingrese el valor a interpolar'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'0','0','0'};
per=inputdlg(prom,name,num,def);
xi=str2num(per{1});
fi=str2num(per{2});
t=str2num(per{3});

n = length ( xi );
m = length ( fi );

if ( n ~= m )
   disp ( 'neville error: number of ordinates and number of function values must be equal' )
   return
end

temp = fi;
for j = 2:n
    for i = n:-1:j
	    temp(i) = ( (t-xi(i-j+1))*temp(i) - (t-xi(i))*temp(i-1) ) / ...
		          ( xi(i) - xi(i-j+1) );
	end
end

if ( nargout == 0 )
   disp ( temp(n) )
else
   y = temp(n);
end
end