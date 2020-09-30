
% X = ExactInversion('exponential', 1, 10000)

function X = ExactInversion(d_t, parameters, n)

X = zeros(1, n);
U = UMersenneTwisterRNG(1, n);

switch(d_t)
    case 'exponential'
        if parameters <= 0
            error('Wrong parameter!');
        end
        
        X = (-1 / parameters) * log(U);
    case 'cauchy'
        if parameters <= 0
            error('Wrong parameter!');
        end
        
        X = parameters * tan(pi * U);
    case 'rayleigh'
        if parameters <= 0
            error('Wrong parameter!');
        end
        
        X = parameters * sqrt(-2 * log(U));
    case 'triangular'
        if parameters <= 0
            error('Wrong parameter!');
        end
        
        X = parameters * (1 - sqrt(U));
    case 'end'
        if parameters <= 0
            error('Wrong parameter!');
        end
        
        X = sqrt(parameters^2 - 2 * log(U));
    case 'pareto'
        if parameters(1) <= 0 || parameters(2) <= 0
            error('Wrong parameter!');
        end
        
        X = parameters(2)./U.^(1 / parameters(1));
    case 'other'
        if parameters(1) <= 0 || parameters(2) <= 0
            error('Wrong parameter!');
        end
        
        X = parameters(1) * nthroot(-log(1 - U), parameters(2));
end

end

