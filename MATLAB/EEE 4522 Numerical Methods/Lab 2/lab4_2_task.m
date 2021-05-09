
format long
f=inline(input('Enter function:','s'));
%Ask for the initial guesses
a=input('Enter first guess:');
b=input('Enter second guess:');


%disp(sprintf('\n\n****************************Table of Values****************************'));
disp('Terms True True Abs True Relative Abs Rel')
disp('Used Value Error Error True True ');
for i=1:1:10
    c=b-((f(b)*(a-b))/(f(a)-f(b)));

   
 et=abs(0.5671432904-c)/0.5671432904;
   


string = '%g %+1.3e %+1.3e %+1.3e %+1.3e ';
disp(sprintf(string,i,c,abs(0.5671432904-c),et))
iteration(i) = i;
a=b;
b=c;
end
%%