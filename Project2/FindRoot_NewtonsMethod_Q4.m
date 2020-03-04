% x0: x initial condition
% p: power in the function v(x)
% tol: error tolerance
function root = FindRoot_NewtonsMethod_Q4(x0, p, tol)
%apply newtons iterative method to function v
x = [x0]; %initialize a vector beginning with x0
err = 1; %intialize error

absErr = [2-x0];

while err >= tol
    x(i+1) = x(i) - p * v(x(i), p) / v_prime(x(i), p);
    
end
root = x(length(x));