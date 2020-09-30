function ex2()

    X = (0:15).*2.4
    N = [560 3019 4658 4545 3147 1924 1098 554 223 111 42 23 12 3 2];
    
    n = sum(N);
    k = length(N);
    
    for i = 1 : k
        Y(i) = (X(i) + X(i + 1)) / 2;
    end
    
    a = 4;

    b = (N * Y') / n / a
    
    index = 1:k;
    p0 = ContinuousCDF(X(index+1), 'gamma', [a,b]) - ContinuousCDF(X(index), 'gamma', [a,b]);
    
    plot(Y,N)
    
    alpha = 0.01;
    
    chi2_value = sum((N - n.*p0).^2 ./ (n.*p0))
    chi2_quantile = chi2inv(1-alpha, k - 1 - 2)
    
    H = ~(chi2_value < chi2_quantile);

    
if H == 0
    fprintf('Gamma eloszlas\n');
else
    fprintf('NEM Gamma eloszlas\n');
end

end