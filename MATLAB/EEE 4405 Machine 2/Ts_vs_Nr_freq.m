clc;
clear all;
close all;

Nr=0:.1:1550;
R2=0.4;
X2=0.7;
E2=80;

f=50;
Ns=(2*f)/4;          %assuming 4 pole and in rps
s=(Ns-(Nr/60))/Ns;
Tr=1.5*(1/(pi*Ns))*((s*E2.^2*R2)./(R2.^2+(s*X2).^2));


h1 = figure;
plot(Nr,Tr,'r');
ylim([0 110]);
title('Rotor Torque vs Speed Curve');
xlabel('Rotor Speed (in rpm)');
ylabel('Rotor Torque');
grid on;
grid minor;
hold on;


f=75;                        %recalculating freq
Ns=(2*f)/4;          
s=(Ns-(Nr/60))/Ns;
Tr=1.5*(1/(pi*Ns))*((s*E2.^2*R2)./(R2.^2+(s*X2).^2));
figure(h1);
plot(Nr,Tr,'g');
hold on;


f=100;                        %recalculating freq
Ns=(2*f)/4;          
s=(Ns-(Nr/60))/Ns;
Tr=1.5*(1/(pi*Ns))*((s*E2.^2*R2)./(R2.^2+(s*X2).^2));
figure(h1);
plot(Nr,Tr,'b');


legend('50Hz','75Hz','100Hz');




%for first case E2/f= 80/50 =8/5, which will be the constant

f=50;
E2=(8/5)*f;
Ns=(2*f)/4;          
s=(Ns-(Nr/60))/Ns;
Tr=1.5*(1/(pi*Ns))*((s*E2.^2*R2)./(R2.^2+(s*X2).^2));


h2=figure;
plot(Nr,Tr,'r');
ylim([0 250]);
title('Tr vs Nr (when V/f=constant)');
xlabel('Rotor Speed (in rpm)');
ylabel('Rotor Torque');
grid on;
grid minor;
hold on;


f=75;        %recalculating
E2=(8/5)*f;
Ns=(2*f)/4;          
s=(Ns-(Nr/60))/Ns;
Tr=1.5*(1/(pi*Ns))*((s*E2.^2*R2)./(R2.^2+(s*X2).^2));

figure(h2);
plot(Nr,Tr,'g');
hold on;


f=100;        %recalculating
E2=(8/5)*f;
Ns=(2*f)/4;          
s=(Ns-(Nr/60))/Ns;
Tr=1.5*(1/(pi*Ns))*((s*E2.^2*R2)./(R2.^2+(s*X2).^2));

figure(h2);
plot(Nr,Tr,'b');
hold on;

legend('50Hz','75Hz','100Hz');



