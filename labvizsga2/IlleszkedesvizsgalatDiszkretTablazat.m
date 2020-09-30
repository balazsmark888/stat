function [] = IlleszkedesvizsgalatDiszkretTablazat( xi, Ni, distribution_type, alpha )

n = sum(Ni);
k = length(Ni);

switch(distribution_type)
    case 'geometric'
        parameters(1) = n / sum(xi .* Ni);
        l = 1;
        
        p0 = DiscretePDF(xi, distribution_type, parameters);
    case 'binomial'
        parameters(1) = max(xi);
        parameters(2) = (1/n * sum(xi .* Ni)) / parameters(1);
        l = 1;
        
        p0 = DiscretePDF(xi, distribution_type, parameters);
    case 'poisson'
        parameters(1) = 1/n * sum(xi .* Ni);
        l = 1;
        
        p0 = DiscretePDF(xi, distribution_type, parameters);
    case 'uniform'
        parameters(1) = min(xi);
        parameters(2) = max(xi);
        l = 0;
        
        p0 = DiscretePDF(xi, distribution_type, [parameters(1), length(xi)]);
end


chi2_value = sum((Ni - n.*p0).^2 ./ (n.*p0))
chi2_quantile = chi2inv(1-alpha, k - 1 - l)

H = ~(chi2_value < chi2_quantile);

if H == 0
    fprintf('%s distribution\n', distribution_type);
    parameters
else
    fprintf('NOT %s distribution\n', distribution_type);
end

end

