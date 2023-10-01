function [B] = generateVectorB(B)
%create functions for the boundaries
    function [phi1] = phi_1(x)
        phi1 = 2*x - x^3;
    end
    function [phi2] = phi_2(y)
        phi2 = 1+3*y^2;
    end
    function [phi3] = phi_3(x)
        phi3 = 5*x-x^3;
    end
    function [phi4] = phi_4(y)
        phi4 = 0*y;
    end
%populate each index using the phi functions
B(1,1) = -(phi_1(1/4)) - phi_4();
B(2,1) = -(phi_1(1/2));
B(3,1) = -(phi_1(3/4)) - phi_2(1/4);
B(4,1) = -(phi_4(1/2));
B(5,1) = 0;
B(6,1) = -(phi_2(1/2));
B(7,1) = -(phi_4(3/4)) - phi_3(1/4);
B(8,1) = -(phi_3(1/2));
B(9,1) = -(phi_2(3/4)) - phi_3(3/4);

end

