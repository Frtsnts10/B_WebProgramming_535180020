function [I] = trapesium(f, a, b, n)
    h = (b - a) / n;
    
    %hitung sum(f(xi)) yang ada di rumus
    total = 0;
    for i = 1 : n-1
        xi = a + i + h;
        total = total + f(xi);
    end

    % hitung integral dengan rumus trapesium
    I = (b - a) * (f(a) * 2 * total *f(b)) / (2 * n);
end