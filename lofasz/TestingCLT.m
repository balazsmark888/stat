
% [XX Z] = TestingCLT('exp', 5, 1000, 2000)
% [XX Z] = TestingCLT('geo', 1/3, 1000, 2000)

function [XX, Z] = TestingCLT( d_t, par, nx, nz )

Z = zeros(1, nz);
XX = [];

for i = 1 : nz
    switch(d_t)
        case 'exp'
            lambda = par(1);
            mu = 1/lambda;
            sigma = 1/lambda;
            X = ExactInversion('exponential', lambda, nx);
        case 'geo'
            p = par(1);
            mu = 1/p;
            sigma = sqrt(1 - p)/p;
            X = MintavetelGeometric(p, nx);
    end
    
    XX = [XX X];
    Z(i) = (mean(X)-mu)/(sigma/sqrt(nx));
end

end

