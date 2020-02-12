function root = FindRoot_Bisection(a, b)

if f(a)*f(b) < 0 
    c = (a + b) / 2;
    
    while f(c) ~= 0
        if f(a)*f(c) < 0
            b = c;
        else 
            a = c;
        end
    end
    
    root = c;
end






