function [firstInverse] = SchulzMethod_firstInverse(initialInverse, A11)
    %create identity matrix
    I = eye(3,3);
    %create schulz identity and other variables
    schulzIdentity = I.*2;
    AVM1 = A11.*initialInverse;

    %get the approximate inverse for the first iteration
    firstInverse = initialInverse*(schulzIdentity - AVM1);
    
   
end

