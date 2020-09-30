
% X = BisectionMethod('normal', [0, 1], -2, 2, 0.01, 1000)

function X = BisectionMethod(d_t, parameters, a, b, eps, n)

X = zeros(1, n);
F = @(x) ContinuousCDF(x, d_t, parameters);

for i = 1 : n
    aa = a;
    bb = b;
    u = ULEcuyerRNG() * (F(bb) - F(aa)) + F(aa);
    x = (aa + bb) / 2;
    
    while(abs(F(x) - u) > eps)
        if F(x) < u
            aa = x;
        else
            bb = x;
        end
        
        x = (aa + bb) / 2;
    end
    
    X(i) = x;
end

end

