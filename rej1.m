function X = rej1(d_t1,par1,d_t2,par2,c,n)
f = @(x) ContinousPDF(x,d_t1,par1);
g = @(x) ContinousPDF(x,d_t2,par2);
X = zeros(1,n);
y = UMersenneTwisterRNG();
u = UMersenneTwisterRNG();
for i = 1:n
    while(f(y)/(c*g(y)) > u)
        y = UMersenneTwisterRNG();
        u = UMersenneTwisterRNG();
    end
    X(i) = y;
end
end