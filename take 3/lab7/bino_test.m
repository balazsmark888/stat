n = 5000;
p2 = 3/10;
    m = 8; 
y = DiscretePDF(0:m,'binomial',[m,p2]);
    x(1,:) = 0:length(y)-1;
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
    hist(X);
    title('Binomial');