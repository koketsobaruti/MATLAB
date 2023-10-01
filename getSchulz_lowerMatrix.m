function [l_schulzMatrix] = getSchulz_lowerMatrix(A,l_schulzMatrix, firstInverse, A2_Schulz,secondInverse_Schulz)
%get matrix A21 and A31 and use it to multiply with the inverseA2_schulz,firstInverse,A32_schulz,secondInverse_Schulz
size2 = 3;
A21 = zeros(size2,size2);
A31 = zeros(size2,size2);
for i = 1:3
    for j= 1:3
        A21(i,j) = A(i+3,j);
        A31(i,j) = A(i+6,j);
    end
end
%calculate their inverses
A21X = A21.*firstInverse;
A31X = A31.*firstInverse;
% %fill the first columns with A21 and A31
% for i = 4:9
%     for j= 1:3
%         switch i %check for the rows
%             case {4,5,6} %rows for A21
%                 l_schulzMatrix(i,j) = A21X(i-3,j);
%             case {7,8,9} %rows for A31
%                 l_schulzMatrix(i,j) = A31X(i-6,j);
%         end
%     end
% end

%create the lower matrix first row
% for i=1:9
%     for j = 1:9
%         if i==j
%             l_schulzMatrix(i,j) = 1;
%         else
%             l_schulzMatrix(i,j) = 0;
%         end
%     end
% end


%get matrix A32 from shultz iteration to multiply with the inverse
A32 = zeros(size2,size2);
for i = 1:3
    for j= 1:3
        A32(i,j) = A2_Schulz(i+6,j+6);
    end
end
A32 = A32.*secondInverse_Schulz;

%create the lower matrix second and third row
for i=4:9
    for j = 1:6
        switch j
            case {1,2,3}
                switch i
                    case {4,5,6}
                        l_schulzMatrix(i,j)=A21X(i-3,j);
                    case {7,8,9}
                        l_schulzMatrix(i,j)=A31X(i-6,j);
                end
            case {4,5,6}
                switch i
                    case {7,8,9}
                        l_schulzMatrix(i,j)=A32(i-6,j-3);
                end

        end
    end
    
    

end



% end
