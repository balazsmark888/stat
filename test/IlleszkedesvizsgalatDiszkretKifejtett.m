function [] = IlleszkedesvizsgalatDiszkretKifejtett( X, distribution_type, alpha )

n = length(X);
k = round(1 + log2(n)); % otpimalis kategoriaszam

hist(X, k);
N = hist(X, k); % nem rajzol

switch(distribution_type)
    case 'geometric'
        parameters(1) = 1/mean(X);
        l = 1;
    case 'binomial'
        parameters(1) = max(X);
        parameters(2) = mean(X)/parameters(1);
        l = 1;
    case 'poisson'
        parameters(1) = mean(X);
        l = 1;
    case 'uniform'
        parameters(1) = min(X);
        parameters(2) = max(X);
        l = 0;
end

index = 1:k;
p0 = DiscretePDF(index, distribution_type, parameters);

chi2_value = sum((N - n.*p0).^2 ./ (n.*p0));
chi2_quantile = chi2inv(1-alpha, k - 1 - l);

H = ~(chi2_value < chi2_quantile);

if H == 0
    fprintf('%s distribution\n', distribution_type);
    parameters
else
    fprintf('NOT %s distribution\n', distribution_type);
end

end

