function [I] = simpson(f, a, b, n)
    h = (b - a) / n;

    %hitung sum(f(xi)) untuk indeks genap dan ganjil sesuai rumus
    totalGenap = 0;
    totalGanjil = 0;

    for i = 1 : n-1
        xi = a + i * h;
        if (mod(i, 2) == 0)
            totalGenap = totalGenap + f(xi);
        else
            totalGanjil = totalGanjil + f(xi);
    end

    %hitung integral dengan rumus metode simpson 1/3 berganda
    I = (b - a) * (f(a) + 4 * totalGanjil + 2 * totalGenap + f(b)) / (3 * n);
end