% [x0, x1]: starting interval
% n: number of iterations
% alpha: the root the interval should converge on
function root = FindRoot_SecantMethod(x0, x1, n, alpha)
x_n = [x0 x1];
%initialize error vectors for output
absErrs = [abs(alpha - x0) abs(alpha - x1)];
divErrs = [0 abs(alpha - x1)/abs(alpha - x0)];
divSqrErrs = [0 abs(alpha - x1)/abs(alpha - x0)^2];

for i=3:n
    if(h(x_n(i - 1)) == 0)
        break
    end
    
    x_n(i) = x_n(i-1) - ( (x_n(i-1) - x_n(i-2)) * h(x_n(i-1)) ) / ( h(x_n(i-1)) - h(x_n(i-2)) );
    
    %calculate the error terms
    absErrs(i) = abs(alpha - x_n(i));
    divErrs(i) = absErrs(i) / absErrs(i-1);
    divSqrErrs(i) = divErrs(i) / absErrs(i-1);
end

t = table([0:length(x_n) - 1]',x_n',absErrs',divErrs',divSqrErrs','VariableNames',["n","x_n","abs err","div errs","divsqr errs"])
root = x_n(length(x_n));
