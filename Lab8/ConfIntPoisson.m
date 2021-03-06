function ConfIntPoisson(alpha,n)
l = 3;
X = Poisson(l,n);
x = norminv(1-alpha/2,0,1);
A = 1;
B = - ((2 .* mean(X)) + (1/n .* x .^2));
C = mean(X) .^ 2;
delta = B .^ 2 - 4 .* A .* C;
lMin = (-B - sqrt(delta)) ./ (2 .* A)
lMax = (-B + sqrt(delta)) ./ (2 .* A)

if(lMin < l && l < lMax)
    disp('Interv OK');
else
    disp('Interv not OK');
end