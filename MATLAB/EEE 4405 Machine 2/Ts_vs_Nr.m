clc;
clear all;
close all;

Nr=0:.1:1550;
Ns=25;
X2=0.7;
E2=80;


s=(Ns-(Nr/60))/Ns;

Tr=@(R2)1.5*(1/(pi*Ns))*((s*E2.^2*R2)./(R2.^2+(s*X2).^2));

plot(Nr,Tr(0.1),'r');
ylim([0 130]);
title('Rotor Torque vs Speed Curve');
xlabel('Rotor Speed (in rpm)');
ylabel('Rotor Torque');
grid on;
grid minor;
hold on;
plot(Nr,Tr(0.2),'g');
hold on;
plot(Nr,Tr(0.4),'k');
hold on;
plot(Nr,Tr(.7),'b');
legend('0.1 ohm','0.2 ohm','0.4 ohm','0.7 ohm');











