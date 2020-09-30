function ex4 ()
    X = poissrnd(10,1,100);
    hist(X);
    N = hist(X)
    
    n = sum(N)
    k = length(N);
    x = 1:k;
    alpha = 0.01;
    lambda = mean(X)
    p0 = DiscretePDF(1:(k),'poisson',lambda);
    plot(p0)
    chi2Value = sum(((N-n.*p0).^2) ./ (n.*p0 ))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 1)
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('Poisson');
    else
        disp('Not Poisson');
    end
end