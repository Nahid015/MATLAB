function[Y]=factorial(n)
if n>0
    for i=1:n-1
        n=n*i;
    end
    Y=n
else
    disp('error')
end
