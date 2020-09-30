
% X = ErintoModszer('pearson', [3, 1], 0.1, 5, 0.01, 1000)

function X = ErintoModszer(d_t, parameters, a, b, eps, n)

X = zeros(1, n);
F = @(x) ContinuousCDF(x, d_t, parameters);
f = @(x) ContinuousPDF(x, d_t, parameters);

initVal = 3;
maxIter = 1000;

for i = 1 : n
    aux = initVal;
    u = ULEcuyerRNG() * (F(b) - F(a)) + F(a);
    
    while(true)
        x = aux;
        kontor = 0;
        y = x - (F(x) - u) / f(x);
        
        while y < 0
            x = x / 2;
            y = x - (F(x) - u) / f(x);
        end
        
        while(abs(F(x) - u) > eps && kontor < maxIter)
            x = x - (F(x) - u) / f(x);
            kontor = kontor + 1;
        end
        
        if kontor < maxIter
            break;
        else
            aux = aux / 2;
        end
    end
    
    X(i) = x;
end

end

