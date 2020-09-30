function ex4 ()
    X = [0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.2 2.4 2.6 2.8];
    N = [3065 1853 1236 741 410 267 170 95 58 47 32 7 9 10];
    
    figure
    plot(X,N);
    
    n = sum(N);
    k = length(X);
    alpha = 0.01;
    p = n / (N * X')
    p0 = DiscretePDF(1:k,'geometric',p)
    figure
    chi2Value = sum(((N-n.*p0).^2) ./ (n.*p0 ))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 1)
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('Exponential');
    else
        disp('Not Exponential');
    end
end