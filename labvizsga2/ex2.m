function ex2()

    X = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14];
    N = [182 443 863 1413 1929 2195 1897 1518 1010 524 250 99 32 8 2];
    
    
    
    n = sum(N)
    k = length(X);
    alpha = 0.1;
    lambda = (X * N') / n
    p0 = DiscretePDF(0:(k-1),'poisson',lambda);
    chi2Value = sum(((N-n.*p0).^2) ./ (n.*p0 ))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 1)
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('Poisson');
    else
        disp('Not Poisson');
    end

end