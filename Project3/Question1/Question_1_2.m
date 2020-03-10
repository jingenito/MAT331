function Question_1_2(n)

xVec = linspace(-1,1,n);

xInt = linspace(-1,1,100);
y_func = [];
y_interp = [];

for i=1:length(xInt)
    y_func(i) = f(xInt(i));
    y_interp(i) = P(xInt(i), xVec);
end

plot(xInt,y_func,'blue',xInt,y_interp,'red');
title(n + " spaced nodes");
legend('f(x)','P(x)');