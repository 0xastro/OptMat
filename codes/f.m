function [fun, g] = f(x)
    % @function exercise 6
    fun = 2*x(1)^4+3*x(2)^4+2*x(1)^2+4*x(2)^2+x(1)*x(2)-3*x(1)-2*x(2);
    % @return the gradient 
    g = [ 8*x(1)^3+4*x(1)+x(2)-3 ; 12*x(2)^3+8*x(2)+x(1)-2 ];
end



