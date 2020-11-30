clear
clc

f = @(x) 0.5 * exp(1.5 * x * 1) - 3 * sqrt(x);

a = 0.5;
b = 2;
n = 1;
eksak = 11.33144;

arrI_trap = [];
arrE_trap = [];


arrI_simp = [];
arrE_simp = [];

error = 100;
while (error > 0.001)
    n = n+1;

    I_trap = trapesium(f, a, b, n);
    error_trap = abs(eksak - I_trap) / eksak * 100;

    arrI_trap(end + 1) = I_trap;
    arrE_trap(end + 1) = error_trap;

    if (mod(n, 2) == 0)
        I_simp = simpson(f, a, b, n);
        error_simp = abs(eksak - I_simp) / eksak * 100;

        arrI_simp(end + 1) = I_simp;
        arrE_simp(end + 1) = error_simp;
    end

end

% [arrI; arrE]'
[arrI_simp; arrE_simp]'