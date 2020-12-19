function [X1,X2] = Marsaglia(n)
X1 = zeros(1,n);
X2 = zeros(1,n);

for i = 1:n
    u1 = UMersenneTwisterRNG();
    u2 = UMersenneTwisterRNG();
    z1 = 2 * u1 - 1;
    z2 = 2* u2 - 1;
    s = z1^2 + z2^2;
    while(s <= 0 || s > 1)
        u1 = UMersenneTwisterRNG();
        u2 = UMersenneTwisterRNG();
        z1 = 2 * u1 - 1;
        z2 = 2* u2 - 1;
        s = z1^2 + z2^2;
    end
    t = sqrt(-(2*log(s)/s));
    X1(i) = t * z1;
    X2(i) = t * z2;
end

end