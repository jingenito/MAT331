function root = FindRoot_SecantMethod(x0, x1, n)
x_n = [x0 x1];
absErr = [];

for i=3:n
    if(h(x_n(i - 1)) == 0)
        break
    end
    
    x_n(i) = x_n(i-1) - ( (x_n(i-1) - x_n(i-2)) * h(x_n(i-1)) ) / ( h(x_n(i-1)) - h(x_n(i-2)) );
    
end

t = table([0:length(x_n) - 1]',x_n','VariableNames',["n","x_n"])
root = x_n(length(x_n));
