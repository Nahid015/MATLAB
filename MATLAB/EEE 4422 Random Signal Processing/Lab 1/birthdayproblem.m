nump=input('Give the number of students in class : ');
runs=input('How many experiments do you want');
birthday=ceil(365*rand(nump,runs))
count=0;
for i=1:runs
      if (numel(birthday(:,i))-numel(unique(birthday(:,i))))>0
          count=count+1;
      end
end
probab=1-(count/runs)
