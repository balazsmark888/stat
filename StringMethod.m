function X = StringMethod(d_t,par,a,b,epsilon,n)
X = zeros(1,n);
switch(d_t)
    case 'normal'
        F = @(x) ContinousCDF(x,'normal',par);
    case 'exponential'
        F = @(x) ContinousCDF(x,'exponential',par);
    case 'beta'
        F = @(x) ContinousCDF(x,'beta',par);
    case 'gamma'
        F = @(x) ContinuosCDF(x,'gamma',par);
    case 'lab3'
        F = @(x) ContinuosCDF(x,'lab3',par);
end
for i = 1:n
    aa = a;
    bb = b;
    U = UMersenneTwisterRNG() * (F(b) - F(a)) + F(a);
    x = aa + (bb - aa) * (U - F(aa))/(F(bb) - F(aa));
    while(abs(F(x) - U) > epsilon)
        if(F(x) < U)
            aa = x;
        else
            bb = x;
        end
        x = aa + (bb - aa) * (U - F(aa))/(F(bb) - F(aa));
    end
    X(i) = x;
end
end