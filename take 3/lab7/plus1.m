function plus1()

    a = 0;
    b = 1;

    n = 100000;
    X = UMersenneTwisterRNG(n);
    Y = zeros(1,n);
    for i = 1:n
        Y(i) = X(i) / (1 + X(i));
    end
    teorExpectedValue = 1 - log(2)
    realExpectedValue = mean(Y)
    teorVariance = 3/2 + 2 * log(1/2) - (1 - log(2))^2
    realVariance = var(Y)
end