function [initialInverse] = initialInverse(A)
%create a new 3x3 matrix
Ainv = zeros(3,3);
    for i = 1:3
        for j = 1:3
            Ainv(i,j) = A(i,j);
        end
    end

%generate the initial inverese Vo for the Schulz and Chebychev method
initialInverse = inv(Ainv);
end

