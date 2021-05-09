%In football game between IUT and BUET, any home team wins any game with probability p < 0.5. 
%In a best of three playoff series, a team with the home advantage has a game at home, followed 
%by a game away, followed by a home game if necessary. The series is over as soon as one team wins 
%two games. What is P[H], the probability that the team with the home advantage wins the series?

run=100000;
m1=rand(run,1);
m2=rand(run,1);
m3=rand(run,1);

count1=0;
count2=0;
count3=0;
 
for i=1:run
    if(m1(i,1)<.5 && m2(i,1)<.5)
        count1=count1+1;
    end
    if (m1(i,1)<.5 && m2(i,1)>.5 && m3(i,1)<.5)
            count2=count2+1;
    end
       if (m1(i,1)>.5 && m2(i,1)<.5 && m3(i,1)<.5)
                count3=count3+1;
       end
end

count=count1+count2+count3;

p=count/run
            
        
        
        
