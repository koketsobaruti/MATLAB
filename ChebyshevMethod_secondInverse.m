function [secondInverse_Chebyshev] = ChebyshevMethod_secondInverse( A2_chebychev, firstInverse_Chebyshev,chebyshevIdentity)
A11 = zeros(3,3);
for i = 1:3
    for j = 1:3
        A11(i,j) = A2_chebychev(i+3,j+3);
    end
end
%get the approximate inverse for the second iteration
AVM2 = A11.*firstInverse_Chebyshev;
secondInverse_Chebyshev = firstInverse_Chebyshev*(chebyshevIdentity - AVM2*(chebyshevIdentity - AVM2));
end

