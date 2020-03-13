function Question_1_2(n)

nodes = linspace(-1,1,n);

%initiailize the vectors for plotting
xInt = linspace(-1,1,100);
y_func = [];
y_interp = [];

%looping over xInt because P(x) gets complicated when trying
%to allow for vectors
for i=1:length(xInt)
    y_func(i) = f(xInt(i));
    y_interp(i) = P(xInt(i), nodes);
end

%calculate the total error on the interval
totalErr = 0;
currT = -1;
for i=1:11
    truefT = f(currT);
    interpfT = P(currT, nodes);
    totalErr = totalErr + abs(truefT - interpfT);
    currT = currT + (1/6);
end

%plot the data
plot(xInt,y_func,'blue',xInt,y_interp,'red');
title(n + " spaced nodes");
legend('f(x)','P(x)'); %output the total error
totalErr