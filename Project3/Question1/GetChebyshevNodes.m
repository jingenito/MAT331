function val = GetChebyshevNodes(n)
val = [];
for j=0:n-1
    val(j+1) = cos((2*j+1)*pi/(2*n+1));
end
val = sort(val); %P(x) depends on these being sorted
