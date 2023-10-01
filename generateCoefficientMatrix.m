function A = generateCoefficientMatrix(N, M)
    % Compute the number of interior grid points
    numInteriorPoints = (N-1) * (M-1);
    
    % Initialize the coefficient matrix
    A = zeros(numInteriorPoints, numInteriorPoints);
    
    % Compute the coefficients for the interior grid points
    for i = 1:(N-1)
        for j = 1:(M-1)
            index = (j-1) * (N-1) + i;
            
            % Diagonal coefficient
            A(index, index) = -4;
            
            % Right neighbor coefficient
            if i < (N-1)
                A(index, index+1) = 1;
            end
            
            % Left neighbor coefficient
            if i > 1
                A(index, index-1) = 1;
            end
            
            % Upper neighbor coefficient
            if j < (M-1)
                A(index, index+N-1) = 1;
            end
            
            % Lower neighbor coefficient
            if j > 1
                A(index, index-N+1) = 1;
            end
        end
    end
end
