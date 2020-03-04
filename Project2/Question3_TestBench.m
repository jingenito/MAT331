function Question3_TestBench()
x = linspace(-5,5,100);
y = [];

%plot the function h over x
for i=1:length(x)
    y(i) = h(x(i));
end

plot(x,y)
xlim([-5 5])
ylim([-13 7])