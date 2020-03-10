function val = div_f(xVec)
   
    if length(xVec) == 1
        val = f(xVec(1));
        return
    else 
        val = (div_f(xVec(2:length(xVec))) - div_f(xVec(1:length(xVec)-1))) / (xVec(length(xVec)) - xVec(1));
        return
    end
    