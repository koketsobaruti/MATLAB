function [u_schulzMatrix] = getSchulz_upperMatrix( A, A2_Schulz,u_schulzMatrix, A3_Schulz)

%first row values
for i = 1:3
    for j = 1:9
        u_schulzMatrix(i,j) = A(i,j);
    end
end
%second row values
for i=4:6
    for j = 4:9
         u_schulzMatrix(i,j) = A2_Schulz(i,j);
    end
end

%third row values
for i= 7:9
    for j = 7:9
        u_schulzMatrix(i,j) = A3_Schulz(i,j);
    end
end
end

