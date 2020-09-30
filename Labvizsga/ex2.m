X = [0 1 2 3 4 5 6 7 8 9 10 11];
N = [33 249 902 1982 2931 3026 2218 1109 435 104 9 2];
n = sum(N);
k = length(X);
x = 0:k - 1;
alpha = 0.01;
lambda = (N * x') / n
p0 = DiscretePDF(0:(k - 1),'poisson',lambda);
chi2Value = sum(((N-n.*p0).^2) ./ (n.*p0))
chi2Quantile = chi2inv(1 - alpha, k - 1 - 1)
H = ~(chi2Value < chi2Quantile);
if(~H)
    disp('Poisson');
else
    disp('Not Poisson');
end