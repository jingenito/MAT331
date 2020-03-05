function root = FindRoot_Bisection(a, b, n, alpha)

if f(a)*f(b) < 0 
    c = [];
    absErr = [];
    
    for k=1:n
        c(k) = (a + b) / 2; %get the midpoint of the new interval
        absErr(k) = abs(alpha - c(k));
        
        if f(a)*f(c(k)) < 0
            %different sign so change b
            b = c(k);
        elseif f(a)*f(c(k)) > 0
            %same sign so change a
            a = c(k);
        end
        
    end
    t = table([0:n-1]',c',absErr','VariableNames',["n","x","Abs Err"])
    
    %c will be the estimate of the root
    root = c(length(c));
end






