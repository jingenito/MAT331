function root = FindRoot_Newton_Q2(x0, b, n)
%apply newtons iterative method to function g
x = [x0]; %initialize a vector beginning with x0
for i=1:n
    x(i+1) = x(i) - g(x(i), b) / g_prime(x(i), b);
end
%xn will be the approximation of the root
root = x(n);

%output a table of estimates
t = table([0:n]',x','VariableNames',["n","x"])