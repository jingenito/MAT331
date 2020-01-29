%implements functions f and g 
function Question2()

xVals = 0.99 : 1e-4 : 1.01;

fVals = [];
gVals = [];
hVals = [];

for i=1:length(xVals)
    x = xVals(i);
    
    fVals(i) = f(x);
    gVals(i) = g(x);
    hVals(i) = h(x);
end

figure(1);
plot(xVals,fVals,'black',xVals,gVals,'blue',xVals,hVals,'red')