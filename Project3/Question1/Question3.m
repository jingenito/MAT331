%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Plot P(x) with the runge function where n is the amount of
%evenly Chebyshev nodes to use.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Question3(n)
nodes = GetChebyshevNodes(n);
yNodes = f1(nodes);
xInt = linspace(-1,1,100);
y_func = [];
y_interp = [];

for i=1:length(xInt)
    y_func(i) = f1(xInt(i));
    y_interp(i) = P(xInt(i), nodes, yNodes);
end

totalErr = 0;
currT = -1;
for i=1:11
    truefT = f1(currT);
    interpfT = P(currT, nodes, yNodes);
    totalErr = totalErr + abs(truefT - interpfT);
    currT = currT + (1/6);
end

plot(xInt,y_func,'blue',xInt,y_interp,'red');
title(n + " spaced nodes");
legend('f(x)','P(x)');
totalErr %output the total error