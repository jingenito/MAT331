%implements functions f, g and h
function Question2()
%create the step size for 101 points
stepSize = (1.01 - 0.99) / 100;
xVals = 0.99 : stepSize : 1.01;

%initialize the function vectors
fVals = [];
gVals = [];
hVals = [];

%evaluate the functions on xVals
for i=1:length(xVals)
    x = xVals(i);
    
    fVals(i) = f(x);
    gVals(i) = g(x);
    hVals(i) = h(x);
end

%plot the functions 
figure(1);
plot(xVals,fVals,'black',xVals,gVals,'blue',xVals,hVals,'red')