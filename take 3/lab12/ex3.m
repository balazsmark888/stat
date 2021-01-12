function ex3()

    X = [1 2 3 4 5 6 7 8];
    N = [96 104 111 98 99 103 114 75];
    
    n = sum(N);
    k = length(X);
    alpha = 0.01;
    
    P0 = ones(1,8) .* 1/8;
    
    chi2Value = sum(((N-n.*P0).^2) ./ (n.*P0 ))
    chi2Quantile = chi2inv(1 - alpha, k - 1)
    
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('Szabalyos');
    else
        disp('Nem Szabalyos');
    end
end