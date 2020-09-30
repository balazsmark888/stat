function ex4()
    
    X = [1 2 3 4 5 6];
    N = [69 50 57 64 63 97];
    
    n = sum(N);
    k = length(X);
    alpha = 0.01;
    
    p0 = ones(1,6) * 1/6;
    
    chi2Value = sum(((N - n .* p0) .^ 2 ) ./ (n .* p0))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 0)
    
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('A kocka szabalyos');
    else
        disp('A kocka nem szabalyos');
    end

end