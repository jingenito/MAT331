function val = f(x)
val = [];
%doing it this way to allow a vector to be passed in as well as a value
for i=1:length(x)
    val(i) = 1 / (1 + 25*x(i)^2);
end