t=[0:0.01:1];
A=8;
f1=2;
s1=A*sin(2*pi*f1*t);
f2=4;
s2=A*sin(2*pi*f2*t);

figure
subplot(3,1,1)
plot(t,s1)
title('2Hz sin wave')
xlabel('time')
ylabel('Amplitude')


subplot(3,1,2)
plot(t,s2)
title('4Hz sin wave')
xlabel('time')
ylabel('Amplitude')

subplot(3,1,3)
plot(t,s1+s2)
title('Summed sin wave')
xlabel('time')
ylabel('Amplitude')

