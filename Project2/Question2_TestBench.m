function Question2_TestBench()

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
    title("B=" + b(i));
    
    %leaving unsupressed to output the root
    root = FindRoot_Newton_Q2(0,b(i),20)
    root = FindRoot_Newton_Q2(-0.5,b(i),20)
end
