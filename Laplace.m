function X = Laplace(n)
X = zeros(1,n);
for i = 1:n
    y = ExactInversion('exponential',1,1);
    u = UMersenneTwisterRNG() * 2 - 1;
    while((y - 1)^2 > - 2 * log(abs(u)))
        y = ExactInversion('exponential',1,1);
        u = UMersenneTwisterRNG() * 2 - 1;
    end
    X(i) = y * sign(u);
end
end