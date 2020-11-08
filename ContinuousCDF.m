function F = ContinuousCDF(x,d_t,par)
f = @(x) ContinuousPDF(x,d_t,par);
x_min = 0;
n = length(x);
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
    case 'lab3'
        syms f(X);
        f(X) = piecewise(X < 0, 0, 0 < X <= 1/3, 3 * X ^ 2 / 2 + X / 2, 1/3 < X <= 1, -1/6  + 5/3 * X - X ^ 2 / 2, X > 1, 1);
        F = f(x);
        return;
    case 'lab2_plus1'
        x_min = x(1) - 10^9;
    case 'student'
        x_min = x(1) - 10^9;
    case 'lab3_add'
        syms f(X);
        f(X) = piecewise(X < 1, 0, 1 <= X <= 2, (X^4 + 5*X^2)/30 - 1/5, 0);
        F = f(x);
        return;
end
F = zeros(1,n);
F(1) = quad(f,x_min,x(1));
for i = 2:n
    F(i) = F(i-1) + quad(f,x(i-1),x(i));
end
