clear all;
close all;
A=220;
f=50;
T=1/f;
t=0:1/100:T;
w=2*pi*f;
v1=A*sin(w*t);
v2=A*sin(w*t-(2*pi/3));
v3=A*sin(w*t+(2*pi/3));
plot(t,V1;t,V2;t,V3)

