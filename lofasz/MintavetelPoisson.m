
% X = MintavetelPoisson(4, 1000)

function X = MintavetelPoisson(lambda, r)

if lambda <= 0 || r < 1
    error('Wrong parameter!');
end

X = zeros(1, r);

for k = 1 : r
    u = ULEcuyerRNG();
    i = 0;
    p = exp(-lambda);
    S = p;
    
    while u > S
        i = i + 1;
        p = (lambda / i) * p;
        S = S + p;
    end
    
    X(k) = i;
end

end

