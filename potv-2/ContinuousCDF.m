function F = ContinuousCDF(x,d_t,par)
f = @(x) ContinuousPDF(x,d_t,par);
x_min = 0;
switch(d_t)
    case{'normal'}
        x_min = x(1) - 10^9;
    case 'exponential'
        x_min = 0.1;
    case 'beta'
        x_min = 0.1;
    case {'gamma'}
        x_min = 0;
    case 'uniform'
        x_min = 0.1;
    case 'lab3-2'
        syms f(X);
        f(X) = piecewise(X <= 0, 0, 0 < X <= 1/2, 2 * X ^ 2, 1/2 < X <= 1, -2 * X ^ 2 + 4 * X - 1, X > 1, 1);
        F = f(x);
        return;
end
n = length(x);
F = zeros(1,n);
F(1) = integral(f,x_min,x(1));
for i = 2:n
    F(i) = F(i-1) + integral(f,x(i-1),x(i));
end
