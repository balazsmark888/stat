function X = ExactInversion(d_t,par,n)
X = zeros(1,n);
U = UMersenneTwisterRNG(n);
U = sort(U);
switch(d_t)
    case 'exponential'
        X = (-1/par) .* log(U);
    case 'cauchy'
        X = par .* tan(pi .* U);
    case 'rayleigh'
        X = par .* sqrt(-2 .* log(U));
    case 'pareto'
        a = par(1);
        b = par(2);
        X = b ./ (U .^ (1/a));
    case 'triangular'
        X = par .* (1 - sqrt(U));
    case 'end'
        X = sqrt(par^2 - 2 .* log(U));
    case 'lab3'
        a = par(1);
        b = par(2);
        X = (a) .* power(-log(1 - U),1 / b);
    case 'vizsga'
        alpha = par(1);
        X = sqrt(-3 * pi * log(1 - (U / (alpha * pi / 12))));
end