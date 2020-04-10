%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Interpolate the inverse function of f2(x) with n evenly
%spaced nodes, and output an approximation of the root of f2.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Question4(n)
xNodes = linspace(0,1,n);
yNodes = f2(xNodes);
x0 = P(0,yNodes,xNodes)