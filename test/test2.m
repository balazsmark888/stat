function test2 ()
    X = [0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.2 2.4 2.6 2.8] - 0.2;
    N = [3065 1853 1236 741 410 267 170 95 58 47 32 7 9 10];
    
    
    n = sum(N);
    x = zeros(n,1);
    
    index = 1;
    
    for i=1:length(X)
        for j=1:N(i)
            x(index) = X(i);
            index = index + 1;
        end 
    end
    
    lambda = n / sum(x)
    k = round(1 + log2(n));

    alpha = 0.01;

    xmin = min(x)
    xmax = max(x)
    
    y = linspace(xmin,xmax,k+1);
    
    index = 1:k;
    p0 = ContinuousCDF(y(index+1),'exponential',lambda) - ContinuousCDF(y(index),'exponential',lambda)

    chi2Value = sum(((N - n .* p0) .^ 2 ) ./ (n .* p0))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 1)
    H = ~(chi2Value < chi2Quantile);

    if(H==0)
        disp('Uniform');
    else
        disp('Not Uniform');
    end    
end