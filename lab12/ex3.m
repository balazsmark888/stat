function ex3 ()
    
    X = [1 2 3 4 5 6 7 8];
    N = [13 11 15 15 11 10 11 15];
    n = sum(N);
    k = length(X);
    alpha = 0.01;
    p0 = ones(1,8) * 1/8;
    chi2Value = sum(((N - n .* p0) .^ 2 ) ./ (n .* p0))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 0)
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('Szabalyos a kocka');
    else
        disp('Nem szabalyos');
    end
end