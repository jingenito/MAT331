function Question1_TestBench()
%workspace to test question1 

x = linspace(5,6,100);
y = [];

for i=1:length(x)
    %f that changed 36 to 36.001
    y(i) = f(x(i));
end

plot(x,y)
title('f(x) with 36 -> 36.001');
ylabel('f(x)')
xlabel('x')