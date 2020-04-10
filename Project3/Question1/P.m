%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This function interpolates the fucntion 'func' at the value 'x'.
%'nodes' is a row vector of xNodes, and func is a row vector of 
%yNodes.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function val = P(x,nodes,func)

divMatrix = zeros(length(nodes)); %preallocate the matrix
prods = 1; %initialize the products of each root

divMatrix(:,1) = func'; %func nodes is the first column
val = divMatrix(1,1); %initialize the first value of the sum

for i=2:length(nodes)
    for j=i:length(nodes)
        %implement the excel process on the matrix
        divMatrix(j,i) = (divMatrix(j,i-1) - divMatrix(j-1,i-1)) / (nodes(j) - nodes(j-i+1));
    end
    
    prods = prods * (x - nodes(i-1));
    val = val + divMatrix(i,i) * prods;
end

