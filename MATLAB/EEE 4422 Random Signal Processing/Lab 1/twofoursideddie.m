X1=1:4;
X2=1:4;
A=X1(X1>=2);
B=X2(X2>3);
C=numel(X1);
D=numel(A);
E=numel(B);
F=intersect(A,B);
probA=D/C
probB=E/C
probintersect=(numel(F)/(numel(X1)+numel(X2)));
probAcondB=(probintersect/probB)

