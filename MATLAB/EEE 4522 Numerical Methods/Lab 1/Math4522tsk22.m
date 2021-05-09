clc
clear all
close all
% Maximum number of terms to use
n=100;
% Value of x at which function is calculated
x=0.5;
%% Displaying Initial Information
%disp(sprintf(''\n\n***************************Input Data******************************''))
disp(sprintf(' Value of x at which to approximate, x = %g',x))
disp(sprintf(' Maximum number of terms, n = %g',n))
% Using a long format so that all the necessary digits can be shown
format long
%% Maclaurin series in a repetitive loop.
sumprevious = 0;
for i=1:1:n
func = 'cos(x)';
%This function "f" will be used to find the "true value" & "approximate value" in calculations.
f = inline('cos(x)');
sumpresent(i) = sumprevious + (((-1)^(i-1))*(x^(2*(i-1)+1)))/(factorial(2*(i-1)+1));
%%For finding the True Error
TrueError(i) = f(x) - sumpresent(i);
AbsTrueError(i) = abs(f(x) - sumpresent(i));
RelTrueError(i) = ((f(x) - sumpresent(i))/f(x))*100;
AbsRelTrueError(i) = abs((f(x) - sumpresent(i))/f(x))*100;
%%For finding the Approximate error
ApproximateError(i) = sumpresent(i) - sumprevious;
AbsApproximateError(i) = abs(sumpresent(i) - sumprevious);
RelApproximateError(i) = ((sumpresent(i) - sumprevious)/sumpresent(i))*100;
AbsRelApproximateError(i) = abs((sumpresent(i) - sumprevious)/sumpresent(i))*100;
if AbsRelApproximateError(i)< 10e-20
    break;
end
sumprevious = sumpresent(i);
end
disp(sprintf('Terms needed = %g',i))
% %% Creating a table of values based on the error calculations
% % disp(sprintf(''\n\n****************************Table of
% % Values****************************''));
% disp('Terms True True Abs True Relative Abs Rel')
% disp('Used Value Error Error True True ');
% for i=1:1:n
% string = '%g %+1.3e %+1.3e %+1.3e %+1.3e %+1.3e';
% disp(sprintf(string,i,sumpresent(i),TrueError(i),AbsTrueError(i),RelTrueError(i), AbsRelTrueError(i)))
% iteration(i) = i;
% end
% %% Creating a table of values based on the error calculations
% % disp(sprintf(''\n\n****************************Table of Values****************************''));
% disp('Terms True True Abs True Relative Abs Rel')
% disp('Used Value Error Error True True ');
% for i=1:1:n
% string = '%g %+1.3e %+1.3e %+1.3e %+1.3e %+1.3e';
% disp(sprintf(string,i,sumpresent(i),ApproximateError(i),AbsApproximateError(i),RelApproximateError(i), AbsRelApproximateError(i)))
% iteration(i) = i;
% end
% % %% Graph 1: Maclaurin series e(x) as a function of number of terms.
% % figure(1)
% % plot(iteration,sumpresent,'b','LineWidth',2);
% % title('\bfCalculated Value of e^{x} as a Function of Number of Terms');
% % xlabel('\bfNumber of Terms Used');
% % ylabel('\bf e^{x}');
% % legend('bf Calculated Value');
% % %% Graph 2: True and Absolute True Errors
% % figure(2)
% % % First Subplot: True Error vs. Number of Terms Calculated
% % subplot(1,2,1);
% % plot(iteration,TrueError,'LineWidth',2)
% % title('\bfTrue Error vs. Number of Terms ');
% % xlabel('\bfNumber of Terms Used')
% % ylabel('\bfTrue Error');
% % % Second Subplot: Absolute Approximate Error vs. Number of Terms Calculated
% % subplot(1,2,2);
% % plot(iteration,AbsTrueError,'LineWidth',2);
% % title('\bfAbsolute True vs. Number of Terms Used');
% % xlabel('\bfNumber of Terms Used');
% % ylabel('\bfAbsolute True Error');
% % %% Graph 2: Calculation of Relative and Absolute Relative True Error
% % figure(3)
% % % First Subplot: Relative True Error vs. Number of Terms Calculated
% % subplot(1,2,1);
% % plot(iteration,RelTrueError,'LineWidth',2);
% % title('\bfRel True Error vs. Number of Terms Used');
% % xlabel('\bfNumber of Terms Used');
% % ylabel('\bfRelative True Error');
% % % % Second Subplot: Absolute Relative True Error vs. Number of Terms
% % % Calculated.
% % subplot(1,2,2);
% % plot(iteration,AbsRelTrueError,'LineWidth',2);
% % title('\bfAbs Rel True Error vs. Number of Terms Used');
% % xlabel('\bfNumber of Terms Used');
% % ylabel('\bfAbsolute Relative True Error');