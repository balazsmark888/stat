function X = StringMethod(d_t,par,a,b,epsilon,n)
X = zeros(1,n);
switch(d_t)
    case 'normal'
        F = @(x) ContinuousCDF(x,'normal',par);
    case 'exponential'
        F = @(x) ContinuousCDF(x,'exponential',par);
    case 'beta'
        F = @(x) ContinuousCDF(x,'beta',par);
    case 'gamma'
        F = @(x) ContinuousCDF(x,'gamma',par);
    case 'lab3'
        F = @(x) ContinuousCDF(x,'lab3',par);
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