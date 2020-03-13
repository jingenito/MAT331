function val = P(x,nodes)

val = 0; %initialize the output variable
divMatrix = zeros(length(nodes)); %preallocate the matrix
prods = 1; %initialize the products of each root

for i=1:length(nodes)
    for j=i:length(nodes)
        if i == 1
            %the base case just gets the function values
            divMatrix(j,i) = f(nodes(j));
        else
            %implement the excel process on the matrix
            divMatrix(j,i) = (divMatrix(j,i-1) - divMatrix(j-1,i-1)) / (nodes(j) - nodes(j-i+1));
        end
    end
    
    if i > 1 
        prods = prods * (x - nodes(i-1));
    end
    val = val + divMatrix(i,i) * prods;
end

