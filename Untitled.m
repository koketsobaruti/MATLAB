function [A32_schulz] = Untitled(A3_Schulz)
%get the matrix A after the first iteration
A32_schulz = zeros(3,3);

for i= 1:3
    for j = 1:3
        A32_schulz(i,j) = A3_Schulz(i+3,j+3);
    end
end
end

