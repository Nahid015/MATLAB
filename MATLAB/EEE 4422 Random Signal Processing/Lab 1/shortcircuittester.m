S=[111,112,121,211,122,221,222,212]
n=0;
for i=1:8
    x=S(i);
    x1=num2str(x);
    if x1(2)=='1'
        n=n+1;
        y(n)=x;
    end
    
end
n
y
