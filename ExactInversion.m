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
        for i = 1 : n
            if(U(i) <= 0)
                X(i) = 0;
            else
                if(U(i) <= 1/2)
                    X(i) = sqrt(U(i)/2);
                else
                    if(U(i) <= 1)
                        X(i) = 1 - 1/2*sqrt(2 - 2*U(i));
                    else
                        if(x > 1)
                            X(i) = 1;
                        end
                    end
                end
            end
        end
end