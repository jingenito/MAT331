function val = f(x)
%creating a coefficient vector - later might find a way to only use the
%distinct coefficients 
coeffs = [1 -10 45 -120 210 -252 210 -120 45 -10 1];
val = 0;
for i=11:-1:1
    val = val + (x ^ (i-1)) * coeffs(i);
end