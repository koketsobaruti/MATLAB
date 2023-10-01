function [A2_rowMatrix_Chebyshev,A2_columnMatrix_Chebyshev] = createRowColumnMatrix(A2_chebychev)
%generatee a row matrix
A2_rowMatrix_Chebyshev = zeros(9,9);
%get the values for the A matrix to get A.r
for i = 4:6
    for j = 4:9
        A2_rowMatrix_Chebyshev(i,j) = A2_chebychev(i,j);
    end
end

%generatee a column matrix
A2_columnMatrix_Chebyshev = zeros(9,9);
%get the values for the A matrix to get Ar.
for i = 4:9
    for j = 4:6
        A2_columnMatrix_Chebyshev(i,j) = A2_chebychev(i,j);
    end
end
end


