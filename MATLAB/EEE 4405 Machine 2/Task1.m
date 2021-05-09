clear all;
close all;
A=220;
f=50;
T=1/f;
t=0:1/10000:T;
w=2*pi*f;
x=0:.00001:2*pi;
V1=A*sin(w*t+x);
V2=A*sin(w*t-(2*pi/3)+x);
V3=A*sin(w*t+(2*pi/3)+x);
Vt=V1+V2+V3;
plot(t,V1,'g')
hold on;
plot(t,V2,'b')
hold on;
plot(t,V3,'r')
hold on;
plot(t,Vt,'y')


