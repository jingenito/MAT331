function val = P(x,points)

val = div_f(points(1));
i = 2;
prods = 1;

while i <= length(points)
    div_dif = div_f(points(1:i));
    prods = prods * (x - points(i-1));
    val = val + div_dif * prods;
    i = i + 1;
end
