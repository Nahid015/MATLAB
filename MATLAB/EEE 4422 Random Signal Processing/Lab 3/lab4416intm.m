clc
clear all
% Specifying the time variable
st = 0; % Initial Value
inc = 0.001; % Increment
en = 1; % Final Value
t = st:inc:en;
y = sin(2*pi*2*t); % Generating the sine function
figure(1)
plot(t,y)
title('Actual Graph')
x = 0; % Initializing a vector to store the result
y1 = zeros(1,(length(t)-1));
% Performing Integration
for i = 1:(length(t)-1)
x = x + (y(1,i+1)*inc); % Performing cumulative summation to get the
... total area under the curve
y1(1,i) = x;
end
x
t1 = st:inc:(en-inc);
figure(2)
plot(t1,y1)
title('After Integration')