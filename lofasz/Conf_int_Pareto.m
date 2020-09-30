
% [b_min, b_max] = Conf_int_Pareto(0.05, 2000)

function [b_min, b_max] = Conf_int_Pareto( alpha, n )

a = 3;
b = 3;
X = ExactInversion('pareto', [a, b], n);
x = norminv(1 - (alpha/2), 0, 1);

nevezo1 = a/(a-1) * (1 + x/sqrt(n*a*(a-2)));
nevezo2 = a/(a-1) * (1 - x/sqrt(n*a*(a-2)));

b_min = mean(X)/nevezo1;
b_max = mean(X)/nevezo2;

if b > b_min && b < b_max
    disp('Jo a megszerkesztett intervallum');
else
    disp('Nem jo a megszerkesztett intervallum');
end

end

