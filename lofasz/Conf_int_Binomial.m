
% [p_min, p_max] = Conf_int_Binomial(0.05, 2000)

function [p_min, p_max] = Conf_int_Binomial( alpha, n )

m = 10;
p = 1/3;
X = binornd(m, p, 1, n);
x = norminv(1 - (alpha/2), 0, 1);

aux = mean(X);

A = m^2 + (m/n)*x^2;
B = -(2*m*aux + (m/n)*x^2);
C = aux^2;
delta = B^2 - 4 * A * C;

p_min = (-B - sqrt(delta)) / (2 * A);
p_max = (-B + sqrt(delta)) / (2 * A);

if p > p_min && p < p_max
    disp('Jo a megszerkesztett intervallum');
else
    disp('Nem jo a megszerkesztett intervallum');
end

end

