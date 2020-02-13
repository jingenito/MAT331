function root = FindRoot_Bisection(a, b, tol)

if f(a)*f(b) < 0 
    c = (a + b) / 2;
    
    while f(c) >= tol
        if f(a)*f(c) < 0
            b = c;
        else 
            a = c;
        end
        
        c = (a + b) / 2;
    end
    
    root = c;
end






