function feladat1()

    X = [ 39 41 98 33 42 70 12 66 85 12 52 1 83 65 16 95 54 66 99 19 64 58 48 26 80 62 10 92 94 53 17 36 37 22 30 17 6 29 37 5 41 69 3 46 19 38 88 15 39 43 19 73 98 66 56 98 42 58 48 25 ];
    n = length(X);
    k = round(1 + log2(n)); % cellakra osztas
    [f, b] = hist(X, k); 
    % f - cella szamok darabszama
    % b - a cella kozeppontja
    alpha = 0.01; 
    x = linspace(min(X), max(X), k + 1);
    p = zeros(1, k);

    for i = 1:k
        %surusegfuggveny szamolas
        p(i) = unifcdf(x(i+1), 0, 99) - unifcdf(x(i), 0, 99);
    end
     % kvantilis kiszamolasa
    chi2_quantile = chi2inv(1 - alpha, k - 1)
    chi2_value = sum((f - sum(f)*p).^2 ./ (sum(f)*p))
    H = ~(chi2_value < chi2_quantile)
    
    if (H == 0)
        disp('A mintavetel egyenletes eloszlast kovet.'); %Chi erteke nagyobb  mint a kvantilis
    else
        disp('A mintavetel nem egyenletes eloszlast kovet.'); %Chi erteke kisebb mint a kvantilis
    end
    
end

