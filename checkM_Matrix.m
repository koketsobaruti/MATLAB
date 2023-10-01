function [state] = checkM_Matrix(A)
%initialize vector with zeros
j_vector = zeros(9,1);

%initialize counter
i = 3;
%boolean to set the state as t3rue for the matrix being an m-matrix and
%false for otherwise
state = 'true';

%begin a while loop and break if the matrix is not an M-matrix
while i<9
    for j=1:9
        if j~=i
        x = abs(A(i,j));
        y = A(:,j);
        j_vector = j_vector + x*y;
        end
    end
    i_vector = abs(A(i,i)) * A(:,1);
    
    if i_vector < j_vector
        state = 'false';
        
    else
        %increment count if the condition is met
        i = i+1;
        %initialize vector with zeros
        j_vector = zeros(9,1);
    end
end

end

