clear all;
clc;
clf;

figure(1)
ezmesh('2.*u.*cos(v)','2.*u.*sin(v)','u.^4',[0 1], [0 2*pi]);

figure(2)
ezmesh('2.*cos(u).*cos(v)','4.*cos(v).*sin(u)','sin(v)',[0 2*pi]);

figure(3)
ezmesh('2.*u.*cos(v)','2.*u.*sin(v)','v',[0 1], [0 3*pi]);

figure(4)
ezmesh('u.*cos(v)','u.*sin(v)','u',[0 1], [0 2*pi]);

figure(5)
ezmesh('5.*sin(u).*cos(v)','5.*sin(v).*sin(u)','5.*cos(u)',[0 2*pi]);

figure(6)
ezmesh('5.*u.*cos(v)','5.*u.*sin(v)','u.^2',[0 1], [0 2*pi]);