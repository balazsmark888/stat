function ex1()

    X = [-1.6986 2.8823 -1.1179 -0.1050 -4.9102 1.1484 0.9325 -3.2612 -1.8214 -2.8995 -4.3709 -3.2390 -1.1201 -0.8776 1.7121 -1.6948 -1.7826 2.6215 -2.3192 -3.9300 0.5635 2.3822 -1.0998 -0.9545 -4.9630 -3.4923 1.2371 -0.1134 1.3397 1.7032 0.4989 -4.3485 1.4491 -3.9218 -0.4407 -0.4025 -4.8712 2.4786 -0.0818 0.3486 -1.6258 0.6221 -1.2344 -1.7289 2.9091 -1.1180 -4.0619 1.8647 -2.2642 -2.4690 -1.9798 1.9591 -0.7485 -4.7988 -3.0132 0.7894 -1.5410 -2.9084 -3.4847 -3.2842 -1.0408 -4.7360 -2.0190 -2.1466 -2.8023 -2.8848 0.9561 -3.9465 1.4247 -2.5648 -2.2572 0.2747 -4.6883 1.1771 0.5207 2.4180 -4.5039 0.4997 0.8056 1.7722 -0.5696 1.7392 -4.6086 1.0704 0.4080 1.9954 -2.3525 -0.8520 -1.3684 -3.5640 1.7792 -4.6286 -0.8112 -3.1384 2.2262 -0.6699 -4.2105 1.8567 -4.6581 -3.8637 -3.2600 1.2197 -2.1392 -4.7974 1.6702 -2.0944 1.3085 2.0373 0.4121 -0.6380 2.1911 -4.2041 -4.2725 -4.7261 -2.4066 -3.6715 2.9846 -1.6761 1.0347 0.5465];
    n = length(X);
    parameters = zeros(1,2);
    k = round(1 + log2(n));
    N = hist(X, k);
    
    parameters(1) = min(X)
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