function [A32_schulz] = A32_schulzMatrix(A3_Schulz)
%get the matrix A32 after the second iteration
A32_schulz = zeros(3,3);

for i= 1:3
    for j = 1:3
        A32_schulz(i,j) = A3_Schulz(i+3,j+3);
    end
end
end

