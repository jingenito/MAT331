function val = f(x)
%creating a coefficient vector
coeffs = [1 -10 45 -120 210 -252 210 -120 45 -10 1];
val = 0;
%looping back direction to preserve order
for i=11:-1:1
    val = val + (x ^ (i-1)) * coeffs(i); 
end