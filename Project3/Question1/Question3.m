function Question3(n)

xVec = GetChebyshevNodes(n);

xInt = linspace(-1,1,100);
y_func = [];
y_interp = [];

for i=1:length(xInt)
    y_func(i) = f(xInt(i));
    y_interp(i) = P(xInt(i), xVec);
end

totalErr = 0;
currT = -1;
for i=1:11
    truefT = f(currT);
    interpfT = P(currT, xVec);
    totalErr = totalErr + abs(truefT - interpfT);
    currT = currT + (1/6);
end

plot(xInt,y_func,'blue',xInt,y_interp,'red');
title(n + " spaced nodes");
legend('f(x)','P(x)');
totalErr