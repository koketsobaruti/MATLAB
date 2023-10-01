
function [b2_ChebyshevMatrix] = matrixB(A2_chebychev,numInteriorPoints,r)
%define matrix b
b2_ChebyshevMatrix = zeros(numInteriorPoints,numInteriorPoints);
%Add values to the Aii block diagonal
for i = r:(r+2)
    for j = r:(r+2)
        b2_ChebyshevMatrix(i,j) = A2_chebychev(i,j);
    end
end
end

