
% X = MintavetelGeometric(0.5, 1000)

function X = MintavetelGeometric(p, n)

if n < 1 || p <= 0 || p >= 1
    error('Wrong parameter!');
end

X = zeros(1, n);
aux = -log(1 - p);

for i = 1 : n
    u = ULEcuyerRNG();
    X(i) = -log(u) / aux;
end

X = ceil(X);

end

