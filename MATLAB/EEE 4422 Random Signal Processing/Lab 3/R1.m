x=1:6;
A=x(x>=4);
B= x(mod(x,2)==0); % mod is modulus after division. If x=4 then mod(x,2)
                   %will return x-2*n where n= floor(x/2)
                   %. So n=2, x-2*2=4-4=0. So x=4 is 
                   %an even number
d=sqrt(x);
C= x(floor(d)==d);