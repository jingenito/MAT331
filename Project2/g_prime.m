function val = g_prime(x,b)
val = 1 - exp(-b*x^2)*sin(x) - 2*b*x*exp(-b*x^2)*cos(x);