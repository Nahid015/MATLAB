clc
clear all
close all
%% INPUTS: Enter the following
% number of terms to calculate
n=5;
% Function in f(c)=0
f = inline('(9.81*68.1/c)*(1-exp(-(c/68.1)*10))-40');
% Upper initial guess same as example 5.2 of the book
xu = 16;
% Lower initial guess same as example 5.2 of the book
xl = 12;
% Lower bound of range of 'x' to be seen in the graph
lxrange =10;
% Upper bound of range of 'x' to be seen in the graph
uxrange = 18;
%
% The following finds the upper and lower 'y' limits for the plot based on the given
% 'x' range in the input section.
uyrange = f(lxrange);
lyrange = f(lxrange);
for i=lxrange:(uxrange-lxrange)/10:uxrange
if f(i) > uyrange
uyrange = f(i);
end
if f(i) < lyrange
lyrange = f(i);
end
end
%% This graphs the function and two lines representing the two initial guesses
figure(1)
fplot(f,[lxrange,uxrange])
hold on
plot([xl,xl],[uyrange,lyrange],'y','linewidth',2)
plot([xu,xu],[uyrange,lyrange],'g','linewidth',2)
plot([lxrange,uxrange],[0,0],'k','linewidth',1)
title('Entered function on given interval with initial guesses')
hold off
%% --------------------------------------------------------------------------------
for i=1:1:n
figure(i+1)
xr=(xu*f(xl)-xl*f(xu))/(f(xl)-f(xu));
% This graphs the function and two lines representing the two guesses
subplot(3,1,2),fplot(f,[lxrange,uxrange])
hold on
plot([xl,xl],[uyrange,lyrange],'y','linewidth',2)
plot([xu,xu],[uyrange,lyrange],'g','linewidth',2)
plot([xr,xr],[uyrange,lyrange],'r','linewidth',2)
plot([lxrange,uxrange],[0,0],'k','linewidth',1)
title('Entered function on given interval with upper and lower guesses')
hold off
% This portion adds the text and math to the top part
subplot(3,1,1), text(0,1,[sprintf('Iteration %d',i)])
text(0.2,.8,['xr = (xu + xl) / 2 = ',num2str(xr)])
text(0,.6,['Finding the value of the function at the lower and upper guesses and the estimated root'])
text(0.2,.4,['f(xl) = ',num2str(f(xl))])
text(0.2,.2,['f(xu) = ',num2str(f(xu))])
text(0.2,0,['f(xr) = ',num2str(f(xr))])
axis off
% Check the interval between which the root lies
if f(xl)*f(xr)<0
xu=xr;
else
xl=xr;
end
% Calculate relative approximate error
if i>1
ea=abs((xr-xp)/xr)*100;
else
end
% This portion adds the text and math to the bottom
subplot(3,1,3)
if i>1
text(0,1,['Absolute relative approximate error'])
text(0,.8,['ea = abs((xr - xp) / xr)*100 = ',num2str(ea),'%'])
else
end
text(0,.4,['Check the interval between which the root lies. Does it lie in ( xl , xr ) or ( xr , xu )?'])
text(0.2,0.2,['xu = ',num2str(xu)])
text(0.2,0,['xl = ',num2str(xl)])
axis off
xp=xr;
end                                                                                                                