function [thirdInverse_Schulz] = SchulzMethod_thirdInverse(secondInverse,schulzIdentity,A3_schulz)
A11 = zeros(3,3);
for i = 1:3
    for j = 1:3
        A11(i,j) = A3_schulz(i,j);
    end
end

%get the approximate inverse for the second iteration
AVM2 = A11.*secondInverse;
thirdInverse_Schulz = secondInverse*(schulzIdentity - AVM2);

end

