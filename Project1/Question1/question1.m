%The implementation of functions f and g, runs a loop to calculate the
%desired values.
function question1()

%prints the functions f and g for the 
%x value in the loop
fVals = [];
gVals = [];

for i=1:20
    x = 5 ^ -i;
    fVals(i) = f(x);
    gVals(i) = g(x);
end

fVals
gVals
