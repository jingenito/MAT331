%The implementation of functions f and g, runs a loop to calculate the
%desired values.
function Question1()

%prints the functions f and g for the 
%x value in the loop

xVals = [];
fVals = [];
gVals = [];

%populate the function vectors at each x value
for i=1:20
    xVals(i) = 5 ^ -i;
    fVals(i) = f(xVals(i));
    gVals(i) = g(xVals(i));
end

%create the table with the transposes of each row vector
t = table(xVals',fVals',gVals','VariableNames',["x","f", "g"])
