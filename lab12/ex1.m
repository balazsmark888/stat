function ex1 ()
    
    X = [3.95 6.48 2.86 4.32 0.20 0.12 0.33 11.77 1.22 5.25 3.44 2.41 0.24 3.49 0.07 4.8 0.07 1.42 1.62 2.47 1.44 1.62 6.9 0.12 8.22 0.45 7.06 13.69 2.31 0.5 1.61 6.63 3.99 3.10 0.75 0.07 7.42 0.62 1.76 3.91 6.62 3.39 2.92 8.46 2.11 5.95 3.82 2.16 5.52 4.95 1.93 5.31 0.77 0.07 1.26 4.27 2.15 8.91 0.39 0.51 0.8 0.24 5.38 2.08 15.17 3.42 4.65 7.29 6.89 3.44 9.45 2.05 3.01 1.45 1.43 1.79 13.57 10.71 4.56 2.53]; % 1-esbol az adatok ide
    n = length(X);
    k = round(1 + log2(n));
    alpha = 0.01;
    hist(X,k);
    
    
    lambda = 1 / mean(X);
    N = hist(X,k)
    xmin = min(X);
    xmax = max(X);
    x = linspace(xmin,xmax,k + 1)
    index = 1:k
    p0 = ContinuousCDF(x(index + 1),'exponential',lambda) - ContinuousCDF(x(index),'exponential',lambda)
    chi2Value = sum(((N - n .* p0) .^ 2 ) ./ (n .* p0))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 1)
    H = ~(chi2Value < chi2Quantile);
    
    if(~H)
        disp('Exponential');
    else
        disp('Not exponential');
    end
end