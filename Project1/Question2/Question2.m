%implements functions f, g and h
function Question2(a, b, n)
%create the step size for 101 points
stepSize = (b - a) / (n-1);
xVals = a : stepSize : b;

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
xlim([a b])
legend('f','g','h')
%create a table 
t = table(xVals',fVals',gVals',hVals','VariableNames',["x","f","g","h"])

