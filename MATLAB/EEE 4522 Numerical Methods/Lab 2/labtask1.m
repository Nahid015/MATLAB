clc
clear all
close all
% Maximum number of terms to use
n=15;
% Value of x at which function is calculated
x=0.5;
%% Displaying Initial Information
disp(sprintf('\n\n***************************Input Data******************************'))
disp(sprintf(' Value of x at which to approximate, x = %g',x))
disp(sprintf(' Maximum number of terms, n = %g',n))
% Using a long format so that all the necessary digits can be shown
format long
%% Maclaurin series in a repetitive loop.
sumprevious = 0;
for i=1:1:n
func = ' exp(x)';
%This function "f" will be used to find the "true value" in calculations.
f = inline('exp(x)');
sumpresent(i) = sumprevious + (x^(i-1))/(factorial(i-1));
TrueError(i) = f(x) - sumpresent(i);
AbsTrueError(i) = abs(f(x) - sumpresent(i));
RelTrueError(i) = ((f(x) - sumpresent(i))/f(x))*100;
AbsRelTrueError(i) = abs((f(x) - sumpresent(i))/f(x))*100;
sumprevious = sumpresent(i);
if AbsRelTrueError(i)<10e-6
    break
end
end
disp(i )