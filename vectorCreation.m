function [C2_rowVector_chebyshev, C2_columnVector_chebyshev] = vectorCreation(A2_chebychev)
C2_rowVector_chebyshev = zeros(3,9);
C2_columnVector_chebyshev = zeros(9,3);

%generate the c.r column vector
for i = 7:9
    for j = 1:3
        C2_columnVector_chebyshev(i,j) = A2_chebychev(i,j+3);
    end
end
%generate the cr. row vector
for i = 1:3
    for j = 7:9
        C2_rowVector_chebyshev(i,j) = A2_chebychev(i+3,j);
    end
end
end

