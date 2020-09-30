function ex2()

    X = [0.658068 4.330840 2.762462 0.651762 2.423683 -0.297113 1.999892 4.872101 3.947774 -0.015891 2.777204 0.506872 4.908487 -1.412096 -0.247859 3.679426 -1.409038 1.718778 3.604361 3.171763 -1.008359 1.065260 0.452663 1.349482 2.111824 -0.979360 4.337314 2.481360 -0.859423 1.961374 4.521313 3.481713 2.799810 1.263535 -0.177773 1.984877 -0.258605 0.235111 4.375616 4.196540 3.562126 4.480669 -0.748120 1.622788 2.389037 4.392276 2.647778 0.724350 3.180053 3.723444 2.202414 -1.405021 4.456506 -1.624815 1.689175 -1.168027 0.661001 3.689828 -0.291329 4.190959];
    n = length(X);
    parameters = zeros(1,2);
    k = round(1 + log2(n));
    N = hist(X, k);
    
    parameters(1) = min(X);
    parameters(2) = max(X)

    alpha = 0.01;

    xmin = min(X);
    xmax = max(X);
    x = linspace(xmin,xmax,k + 1)
    
    index = 1:k;
    p0 = ContinuousCDF(x(index + 1),'uniform',parameters) - ContinuousCDF(x(index),'uniform',parameters);

    chi2Value = sum(((N - n .* p0) .^ 2 ) ./ (n .* p0))
    chi2Quantile = chi2inv(1 - alpha, k - 1 - 2)
    H = ~(chi2Value < chi2Quantile);

    if(H==0)
        disp('Uniform');
    else
        disp('Not Uniform');
    end    
end