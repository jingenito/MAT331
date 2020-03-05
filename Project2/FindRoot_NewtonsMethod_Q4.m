% x0: x initial condition
% p: power in the function v(x)
% tol: error tolerance
function root = FindRoot_NewtonsMethod_Q4(x0, k, p, tol)
%apply newtons iterative method to function v
x = [x0 0]; %initialize a vector beginning with x0
absErr = [abs(2-x0) 1];
divErr = [0 0];
divSqrErr = [0 0];

i = 2;
while absErr(length(absErr)) >= tol
    x(i) = x(i-1) - k * v(x(i-1), p) / v_prime(x(i-1), p);
    
    %calculate the errors
    absErr(i) = abs(2-x(i));
    divErr(i) = absErr(i) / absErr(i-1);
    divSqrErr(i) = divErr(i) / absErr(i-1);
    
    i = i + 1; %increment i after all the errors have been calculated
end

t = table([0:length(absErr) - 1]',x',absErr',divErr',divSqrErr','VariableNames',["n","x","abs err","div err","div sqr"])

root = x(length(x));