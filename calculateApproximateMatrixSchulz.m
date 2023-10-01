function [A3_Schulz] = calculateApproximateMatrixSchulz(A2_Schulz, A2_rowMatrix, A2_columnMatrix, C2_rowVector, C2_columnVector, b2_matrix,secondInverse_Schulz)
%get approximate A from step 2 

A3_Schulz = A2_Schulz - A2_rowMatrix - A2_columnMatrix + b2_matrix - (C2_columnVector*( secondInverse_Schulz*C2_rowVector));

end

