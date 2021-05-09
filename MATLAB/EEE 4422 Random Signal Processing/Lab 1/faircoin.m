mincount=0;
runs=input('Give no of runs : ');
test1=['h' 'h' 'h' 'h' 'h' 't'];
test2=['t' 'h' 'h' 'h' 'h' 'h'];
test3=['t' 'h' 'h' 'h' 'h' 'h' 't'];
for i=1:runs
    for j=1:9
        if (randn<=1/2)
        X(j)='h';
        else
        X(j)='t';
        end
    end
    count=0;
    if(length(find(X=='h'))<5)
      count=0;
    else
        true=isequal(X(1:6),test1)||isequal(X(1:7),test3)||isequal(X(2:8),test3)||isequal(X(3:9),test3)||isequal(X(4:9),test2);
       mincount=mincount+true;
       X;
    end
end
prob=mincount/runs



     