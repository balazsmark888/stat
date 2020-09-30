
% [lambda_min, lambda_max] = Conf_int_Poisson( 0.05, 2000 )

function [lambda_min, lambda_max] = Conf_int_Poisson( alpha, n )

lambda = 7;
X = MintavetelPoisson(lambda, n);
x = norminv(1 - (alpha/2), 0, 1);

A = 1;
B = -(2.*mean(X)+((1/n).*x^2));
C = mean(X).^2;
delta = B^2 - 4 * A * C;

lambda_min = (-B - sqrt(delta)) / (2 * A);
lambda_max = (-B + sqrt(delta)) / (2 * A);

if lambda > lambda_min && lambda < lambda_max
    disp('Jo a megszerkesztett intervallum');
else
    disp('Nem jo a megszerkesztett intervallum');
end

end

