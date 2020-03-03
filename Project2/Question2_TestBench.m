function Question2_TestBench()

x = [0 -0.5]; %vector of x0 values
for i=1:2
    fprintf('x0=%i\n', x(i));
    Question2(x(i));
end

function Question2(x0)
b = [1 5 10 25 50]; %the vector containing all of the b values
x = linspace(-1,0,100);

%loop over the b vector
for i=1:length(b)
    y = []; %needs to happen on every iteration
    fprintf('B=%i\n', b(i));
    
    %plot g(x) for the current b
    for j=1:length(x)
        y(j) = g(x(j), b(i));
    end
    
    figure;
    plot(x,y)
    title("B=" + b(i) + ", x0=" + x0);
    
    %leaving unsupressed to output the root
    root = FindRoot_Newton_Q2(x0,b(i),20)
end
