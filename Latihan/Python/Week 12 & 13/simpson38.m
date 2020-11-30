function [I] = simpson38 (f, x0, x1, x2, x3)
    I = (x3 - x0) * (f(x0) + 3 * f(x1) + 3 * f(x2) + f(x3)) / 8; 
end