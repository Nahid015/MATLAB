y=[1 2 3 4 5 6 ];
p=zeros(1,6);
for i=1:6
    x=y(i);
    x1=y(y==x);
    px1=length(x1)/length(y);
    p(i)=px1;
end
px1
x2=y(y>=4);
px2=length(x2)/length(y)
x3=y(mod(y,2)==0);
px3=length(x3)/length(y)
d=sqrt(y);
x4=y(floor(d)==d);  
px4=length(x4)/length(y)
