function feladat4()

    E = [1 2 3 4 5 6];
    GY = [50 23 13 37 20 57];
    k = length(E);
    alpha = 0.01;
    n = 200;    
    p = ones(1,6)/6;

    chi2_quantile = chi2inv(1 - alpha, k - 1)
    % kvantilis kiszamolasa
    chi2_value = sum((GY - n*p).^2 ./ (n*p))
    % chi kiszamolsa
    H = ~(chi2_value < chi2_quantile)

    if (H == 0)
        disp('A dobokocka szabalyos.')
    else
        disp('A dobokocka nem szabalyos.');
    end

end

