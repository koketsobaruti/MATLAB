function [ u_chebychevMatrix ] = getChebychev_upperMatrix(A, A2_chebychev,u_chebychevMatrix, A3_chebychev)

%first row values
for i = 1:3
    for j = 1:9
        u_chebychevMatrix(i,j) = A(i,j);
    end
end
%second row values
for i=4:6
    for j = 4:9
         u_chebychevMatrix(i,j) = A2_chebychev(i,j);
    end
end

%third row values
for i= 7:9
    for j = 7:9
        u_chebychevMatrix(i,j) = A3_chebychev(i,j);
    end
end
end


