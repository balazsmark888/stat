function [] = IlleszkedesvizsgalatFolytonosTablazat( xi, Ni, distribution_type, alpha )

n = sum(Ni);
k = length(Ni);

switch(distribution_type)
    case 'normal'
        parameters(1) = 1/n * sum(xi .* Ni);
        parameters(2) = sqrt(1/(n-1) * sum(Ni .* (xi - parameters(1)).^2));
        l = 2;
    case 'exponential'
        parameters(1) = 1/(1/n * sum(xi .* Ni));
        l = 1;
    case 'uniform'
        parameters(1) = min(xi);
        parameters(2) = max(xi);
        l = 2;
end

x_min = min(xi);
x_max = max(xi);
x = linspace(x_min, x_max, k+1);

index = 1:k;
p0 = ContinuousCDF(x(index+1), distribution_type, parameters) - ContinuousCDF(x(index), distribution_type, parameters);
p0(k) = 1 - sum(p0(1:(k-1))); % ha van "szakadek" a tablazat utolso eleme, s a tobbi elem kozott

chi2_value = sum((Ni - n.*p0).^2 ./ (n.*p0));
chi2_quantile = chi2inv(1-alpha, k - 1 - l);

H = ~(chi2_value < chi2_quantile);

if H == 0
    fprintf('%s eloszlas\n', distribution_type);
    parameters
else
    fprintf('NEM %s eloszlas\n', distribution_type);
end

end

