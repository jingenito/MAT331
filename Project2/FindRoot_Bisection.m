function root = FindRoot_Bisection(a, b, n)
k = 1; %initialize loop counter

if f(a)*f(b) < 0 
    
    while k <= n
        c = (a + b) / 2; %get the midpoint of the new interval
        
        if f(a)*f(c) < 0
            %different sign so change b
            b = c;
        elseif f(a)*f(c) > 0
            %same sign so change a
            a = c;
        else
            %found the root
            root = c;
            return;
        end
        
        k = k + 1;
    end
    %c will be the estimate of the root
    root = c;
end






