function feladat2()

    R = [0 1 2 3 4 5 6 7 8 9 10];
    I = [3 10 17 21 19 14 8 4 2 1];
    n = sum(I); 
    sample_mean = (R * I') /n
    alpha = 0.01;
    k = round(1 + log2(n)); % cellakba osztas
    chi2_quantile = chi2inv(1 - alpha, k - 2) 
    p0 = poisspdf(R, sample_mean) % Poisson surusegfuggveny
    chi2_value = sum((I - n*p0).^2 ./ (n*p0)); 
    % chi erteket szamol
    H = ~(chi2_value < chi2_quantile)

    if (H == 0)
        disp('A mintavetel Poisson eloszlast kovet.')
    else
        disp('A mintavetel nem Poisson eloszlast kovet.');
    end

end

