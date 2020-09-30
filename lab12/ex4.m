function ex4 ()
    X = [0 1 2 3 4 5 6 7 8 9];
    N = [3 10 17 21 19 14 8 4 2 1];
    
    n = sum(N);
    k = length(X);
    x = 0:k-1;
    alpha = 0.01;
    lambda = (N * x') / n;
    p0 = DiscretePDF(0:(k-2),'poisson',lambda);
    P0 = [p0,1-sum(p0)];
    chi2Value = sum(((N-n.*P0).^2) ./ (n.*P0 ))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 1)
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('Poisson');
    else
        disp('Not Poisson');
    end
end