function X = NewtonRaphsonMethod2(d_t, parameters, a, b, eps, initVal, n)

X = zeros(1, n);
F = @(x) ContinuousCDF(x, d_t, parameters);
f = @(x) ContinuousPDF(x, d_t, parameters);

steps = 1000;

for i = 1 : n
    aux = initVal;
    u = UMersenneTwisterRNG() * (F(b) - F(a)) + F(a);
    
    x = aux;
    current = 0;
    y = x - (F(x) - u) / f(x);

    while y < 0
        x = x / 2;
        y = x - (F(x) - u) / f(x);
    end

    x = y;
    
    while(abs(F(x) - u) > eps && current < steps)
        x = x - (F(x) - u) / f(x);
        current = current + 1;
    end

    if current < steps
        X(i) = x;
    else
        i = i - 1;
    end
end

end