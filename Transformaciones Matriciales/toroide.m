function[X,Y,Z]=toroide(R,r)

X=[];
Y=[];
Z=[];

for bet=0:pi/36:2*pi
    x=[];
    y=[];
    z=[];
    for alph=0:pi/36:2*pi
        xt=(R+r*cos(alph))*cos(bet);
        yt=(R+r*cos(alph))*sin(bet);
        zt=r*sin(alph);
        x=[x xt];
        y=[y yt];
        z=[z zt];
    end
    X=[X;x];
    Y=[Y;y];
    Z=[Z;z];
end        