function [] = IlleszkedesvizsgalatFolytonosIntervallum( X, N, distribution_type, alpha )

n = sum(N);
k = length(N);
Y = zeros(1, k);

for i = 1 : k
    Y(i) = (X(i) + X(i + 1)) / 2;
end

switch(distribution_type)
    case 'normal'
        parameters(1) = 1/n * sum(Y .* N);
        parameters(2) = sqrt(1/(n-1) * sum(N .* (Y - parameters(1)).^2));
        l = 2;
    case 'exponential'
        parameters(1) = 1/(1/n * sum(Y .* N));
        l = 1;
    case 'uniform'
        parameters(1) = min(Y);
        parameters(2) = max(Y);
        l = 2;
end

index = 1:k;
p0 = ContinuousCDF(X(index+1), distribution_type, parameters) - ContinuousCDF(X(index), distribution_type, parameters);
% p0(k) = 1 - sum(p0(1:(k-1))); % ha van "szakadek" a tablazat utolso eleme, s a tobbi elem kozott

chi2_value = sum((N - n.*p0).^2 ./ (n.*p0))
chi2_quantile = chi2inv(1-alpha, k - 1 - l)

H = ~(chi2_value < chi2_quantile);

if H == 0
    fprintf('%s eloszlas\n', distribution_type);
    parameters
else
    fprintf('NEM %s eloszlas\n', distribution_type);
end

end

