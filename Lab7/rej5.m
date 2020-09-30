function X = rej5(n)
X = zeros(1,n);
a = sqrt(exp(1)) / 2;
for i = 1:n
    u = UMersenneTwisterRNG();
    v = UMersenneTwisterRNG();
    y = tan(pi * v);
    s = y ^ 2;
    while(u > a * (1 + s) * exp(-s / 2))
        u = UMersenneTwisterRNG();
        v = UMersenneTwisterRNG();
        y = tan(pi * v);
        s = y ^ 2;
    end
    X(i) = y;
end
end