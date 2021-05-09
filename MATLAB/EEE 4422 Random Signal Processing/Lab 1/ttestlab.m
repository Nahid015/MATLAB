no_samples_x=10;
no_samples_y=10;
no_experiment=100;

for i=1:no_experiment
    x=randn(1:no_samples_x);
    y=randn(1:no_samples_y);
    mean_x(i)=mean(x);
    var_x(i)=var(x);
    mean_y(i)=mean(y);
    var_y(i)=var(y);
end

figure(1)
hist((mean_x-0).*sqrt(no_samples_x)./sqrt(var_x),100)

t_values=-10:0.1:10;
t_pdf=tpdf(t_values,no_samples_x-1);
figure(2)
plot(t_values,t_pdf)

t_value=abs(tinv(0.025,no_samples_x-1));
count=0;
for i=1:no_experiment
ci_high=(mean_x(i)+t_value.*sqrt(var_x(i))./sqrt(no_samples_x));
ci_low=(mean_x(i)-t_value.*sqrt(var_x(i))./sqrt(no_samples_x));
if ci_high>=0 && ci_low<=0
    count=count+1;
end
end
probab=count./no_experiment
