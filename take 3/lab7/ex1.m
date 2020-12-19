function ex1()
    
    n = 5000;
    
    lambda = 2;
    
    sigma = 2;
    mu = 3;
    
    a1 = 3;
    b1 = 13;
    
    hN = 20;
    hM = 13;
    hn = 14;
    
    p = 0.3;
    
    p2 = 3/10;
    m = 8;
    
    a2 = 5;
    
    ga = 9;
    gb = 1/2;
    

    X = ExactInversion('exponential',lambda,n);  
    
    teorExpectedValue = 1 / lambda;
    teorVariance = 1 / (4 * lambda);
    realExpectedValue = mean(X);
    realVariance = var(X);
    
    disp('Exponential');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    hist(X);
    title('Exponential');
    
    X = Kozrefog(n) .* sigma + mu;
    
    teorExpectedValue = mu;
    teorVariance = sigma^2;
    realExpectedValue = mean(X);
    realVariance = var(X);
    
    disp('Normal');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    hist(X);
    title('Normal');
    
    X = UMersenneTwisterRNG(n) .* (b1 - a1) + a1;
    
    teorExpectedValue = (a1 + b1) / 2;
    teorVariance = (b1 - a1)^2 / 12
    realExpectedValue = mean(X);
    realVariance = var(X);
    
    disp('Uniform');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    hist(X);
    title('Uniform');
    
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
    
    y = DiscretePDF(max(0,hn - hN + hM):min(hn,hM),'hypergeometric',[hN hM hn]);
    hx(1,:) = max(0,hn - hN + hM):min(hn,hM);
    hx(2,:) = y(:);
    X = InversionByBinarySearch(hx,n);
    
    teorExpectedValue = hM * hn / hN;
    teorVariance = hM * hn * (hN - hn) * (hN - hM) / (hN^2 * (hN - 1));
    realExpectedValue = mean(X);
    realVariance = var(X);
    
    disp('Hypergeometric');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    hist(X);
    title('Hypergeometric');
    
    X = Csonkolas('geometric',p,n);
    
    teorExpectedValue = 1 / p;
    teorVariance = (1 - p) / p ^ 2;
    realExpectedValue = mean(X);
    realVariance = var(X);
    
    disp('Geometric');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    hist(X);
    title('Geometric');
    
    X = ExactInversion('triangular',a2,n);
    
    teorExpectedValue = a2 / 3;
    teorVariance = a2^2 / 18;
    realExpectedValue = mean(X);
    realVariance = var(X);
    
    disp('Triangular');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    hist(X);
    title('Triangular');

    
    X = NewtonRaphsonMethod2('gamma',[ga,gb],1/5,10,eps,4,n);
    
    teorExpectedValue = ga*gb;
    teorVariance = ga*gb^2;
    realExpectedValue = mean(X);
    realVariance = var(X);
    
    disp('Gamma');
    diffExpectedValue = abs(teorExpectedValue-realExpectedValue)
    diffVariance = abs(teorVariance-realVariance)
    figure;
    hist(X);
    title('Gamma');
end