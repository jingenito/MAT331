function root = SecantMethod(x0, x1, n)

for i=1:n
    x2 = x1 - (x1 - x0) * h(x1) / ( h(x1) - h(x0) );
    x1 = x2;
    x0 = x1;
end

root = x2;