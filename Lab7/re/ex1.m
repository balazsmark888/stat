function ex1()
    
    n = 10000;
    
    lambda = 2;
    
    p = 0.3;
    
    p2 = 3/10;
    m = 8;
    
    a = 5;
    
    a2 = 3;
    b = 2;
    

    X = ExactInversion('exponential',lambda,n);    
    teorExpectedValue = 1 / lambda;
    teorVariance = 1 / (4 * lambda);
    realExpectedValue = mean(X);
    realVariance = var(X);
    disp('Exponential');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    title('Exponential');
    hist(X);
    
    X = Csonkolas('geometric',p,n);
    teorExpectedValue = 1 / p;
    teorVariance = (1 - p) / p ^ 2;
    realExpectedValue = mean(X);
    realVariance = var(X);
    disp('Geometric');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    title('Geometric');
    hist(X);
    
    y = DiscretePDF(0:m,'binomial',[m,p2]);
    x(1,:) = 1:length(y);
    x(2,:) = y(:);
    X = InversionByBinarySearch(x,n);
    teorExpectedValue = m * p2;
    teorVariance = m * p2 * (1 - p2);
    realExpectedValue = mean(X);
    realVariance = var(X);
    disp('Binomial');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    title('Binomial');
    hist(X);
    
    X = ExactInversion('triangular',a,n);
    teorExpectedValue = a / 3;
    teorVariance = a^2 / 18;
    realExpectedValue = mean(X);
    realVariance = var(X);
    disp('Triangular');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    title('Triangular');
    hist(X);
    
    X = ExactInversion('pareto',[a2,b],n);
    teorExpectedValue = a2 * b / (a2 - 1);
    teorVariance = sqrt(a2 ^ 2 * b / ((a2 - 1)^2 * (a2 - 2)));
    realExpectedValue = mean(X);
    realVariance = sqrt(var(X));
    disp('Pareto');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    title('Pareto');
    hist(X);

end