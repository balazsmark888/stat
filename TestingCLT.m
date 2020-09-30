function [XX,Z] = TestingCLT(d_t,par,nx,nz)
Z = zeros(1,nz);
XX = [];
for i = 1:nz
    switch(d_t)
        case 'exp'
            l = par(1);
            mu = 1/l;
            sigma = 1/l;
            X = ExactInversion('exponential',l,nx);
        case 'poisson'
            l = par(1);
            mu = l;
            sigma = sqrt(l);
            X = Poisson(l,nx);
        case 'gamma'
            a = par(1);
            b = par(2);
            mu = a * b;
            sigma = sqrt(a * b ^ 2);
            X = NewtonRaphsonMethod2('gamma',[a,b],0,24,eps,6,nx);
    end
    XX = [XX X];
    Z(i) = (mean(X) - mu) / (sigma/sqrt(nx));
end
end