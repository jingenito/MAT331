%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Evaluate the runge function at the x vector, and output the 
%corresponding y vector.
%Note: a single value for x will behave as usual as well since
%matlab is really flexible.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val = f1(x)
val = zeros([1 length(x)]); %preallocate output vector
for i=1:length(x)
    val(i) = 1 / (1 + 25*x(i)^2);
end