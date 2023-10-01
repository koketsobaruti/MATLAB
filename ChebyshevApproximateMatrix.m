function [A3_chebychev] = ChebyshevApproximateMatrix(A2_chebychev,secondInverse_Chebyshev,b2_ChebyshevMatrix, A2_columnMatrix_Chebyshev, A2_rowMatrix_Chebyshev, C2_columnVector_chebyshev, C2_rowVector_chebyshev)
%generate the matrix A2 using Chevychev method
A3_chebychev = A2_chebychev - A2_columnMatrix_Chebyshev-A2_rowMatrix_Chebyshev + b2_ChebyshevMatrix - (C2_columnVector_chebyshev*(secondInverse_Chebyshev*C2_rowVector_chebyshev));

end

