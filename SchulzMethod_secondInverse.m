function [secondInverse_Schulz] = SchulzMethod_secondInverse(firstInverse,schulzIdentity,A2_schulz)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A11 = zeros(3,3);
for i = 1:3
    for j = 1:3
        A11(i,j) = A2_schulz(i,j);
    end
end

%get the approximate inverse for the second iteration
AVM2 = A11.*firstInverse;
secondInverse_Schulz = firstInverse*(schulzIdentity - AVM2);
end

