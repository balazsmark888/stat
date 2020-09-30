function [] = IlleszkedesvizsgalatFolytonosKifejtett( X, distribution_type, alpha )

n = length(X);
k = round(1 + log2(n)); % otpimalis kategoriaszam

hist(X, k);
N = hist(X, k); % nem rajzol

switch(distribution_type)
    case 'normal'
        parameters(1) = mean(X);
        parameters(2) = sqrt(var(X));
        l = 2;
    case 'gamma'
        parameters(2) = mean(X)/var(X);
        parameters(1) = parameters(2) * mean(X);
        l = 2;
    case 'exponential'
        parameters(1) = 1/mean(X);
        l = 1;
    case 'uniform'
        parameters(1) = min(X);
        parameters(2) = max(X);
        l = 2;
end

x_min = min(X);
x_max = max(X);
x = linspace(x_min, x_max, k+1);

index = 1:k;
p0 = ContinuousCDF(x(index+1), distribution_type, parameters) - ContinuousCDF(x(index), distribution_type, parameters);

chi2_value = sum((N - n.*p0).^2 ./ (n.*p0));
chi2_quantile = chi2inv(1-alpha, k - 1 - l);

H = ~(chi2_value < chi2_quantile);

if H == 0
    fprintf('%s eloszlas\n', distribution_type);
    parameters
else
    fprintf('NEM %s eloszlas\n', distribution_type);
end

end

