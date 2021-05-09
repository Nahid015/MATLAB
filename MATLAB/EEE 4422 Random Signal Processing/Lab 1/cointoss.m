n=10000;
for i=1:n
    if (randn<=1/2)
        X(i)= 1;
    else
        X(i)= 0;
    end
end
m=sum(X(X==1));
prob=(m/n)
