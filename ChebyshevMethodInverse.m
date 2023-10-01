function [firstInverse_Chebyshev] = ChebyshevMethodInverse(initialInverse,A11,chebyshevIdentity)
    AVM0 = A11.*initialInverse;
    %get the approximate inverse for the first iteration
    firstInverse_Chebyshev = initialInverse*(chebyshevIdentity - AVM0*(chebyshevIdentity - AVM0));
end

