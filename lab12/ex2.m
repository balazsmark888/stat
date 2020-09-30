function ex2 ()
    X = [10.23 10.07 7.89 14.38 9.27 7.65 12.47 7.26 12.92 13.05 11.75 13.85 9.31 12.24 7.89 13.41 14.69 11.01 7.89 14.56 11.38 9.27 7.56 14.92 13.00 11.66 12.75 13.85 14.31 8.64 14.41 10.31 12.66 13.92 9.19 10.12 7.82 9.30 10.23 9.87 13.63 7.35 12.87 11.92 10.56 9.01 13.74 11.34 8.97 8.12 11.98 13.55 11.50 13.00 8.59 12.65 7.71 8.69 10.23 11.02 10.18 8.9 14.87 11.54 7.85 9.92 13.25 8.46 14.96 10.74 9.16 11.63 10.75 8.92 12.04];
    n = length(X);
    k = round(1 + log2(n));
    alpha = 0.01;
    hist(X,k);
    
    %mu = mean(X);
    %sigma = sqrt(1/n * sum((X - mu)) .^ 2);
    N = hist(X,k);
    xmin = min(X);
    xmax = max(X);
    x = linspace(xmin,xmax,k + 1);
    index = 1:k;
    p0 = ContinuousCDF(x(index + 1),'uniform',[xmin,xmax]) - ContinuousCDF(x(index),'uniform',[xmin,xmax]);
    %p0 = unifcdf(x(1:k),xmin,xmax);
    chi2Value=sum( ( (N-n.*p0).^2 ) ./ ( n.*p0 ) )
    chi2Quantile=chi2inv(1-alpha,k-1-2)
    H = ~(chi2Value < chi2Quantile);
    if(~H)
        disp('Egyenletes');
    else
        disp('Nem egyenletes');
    end
end