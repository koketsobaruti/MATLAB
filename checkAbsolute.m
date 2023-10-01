function [result] = checkAbsolute(A, i)

while i<10 %loop while i is up to 9
    sum_total = 0;
    for j = 1:9
        if j==i %cehcck if the value is a diagonal entry and take its absolute value
           diag = abs(A(i,j)); 
        else
            %add the absolute values of the non-diagonl entries to a sum for checking
            sum_total = sum_total + abs(A(i,j));
        end
    end
    %after going through the entire row, check if the diaginal entry is
    %strictly generalized diagonally dominant
    if diag<=sum_total
        %if if diagonal entry is less than or equal to the non-diagonal
        %entries then it is not diagonally dominant otherwise it is
        state = 'false';
    else 
        state = 'true';
    end
    %check the state and end the main loop if there is an instance of a
    %false state
    if strcmp(state,'false')
        %if the matrix is not an m-matrix return fasle and break the code
        result = state;
        break;
    else
        %else continue searching through the matrix 
        i = i+1;
    end    
    %return true if the matrix is an M-matrix
   result = state;
end

