function ex3()

    X = [0 1 2 3 4 5 6 7 8 9 10];
    N = [1 9 14 15 21 17 10 9 1 2 1];
    
    n = sum(N);
    k = length(X);
    x = 0:k-1;
    alpha = 0.01;
    lambda = (N * x') / n
    
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