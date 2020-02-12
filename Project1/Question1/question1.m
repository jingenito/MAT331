%The implementation of functions f and g, runs a loop to calculate the
%desired values.
function Question1()

%prints the functions f and g for the 
%x value in the loop

xVals = [];
fVals = [];
gVals = [];

for i=1:20
    xVals(i) = 5 ^ -i;
    fVals(i) = f(xVals(i));
    gVals(i) = g(xVals(i));
end

A = [];
A(:, 1) = fVals';
A(:, 2) = gVals';

t = table(xVals',A(:, 1),A(:, 2),'VariableNames',["x","f", "g"])
