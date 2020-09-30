function [b_min, b_max] = Conf_int_Pareto(alpha, n)

    a = 3;
    b = 5;
    X = ExactInversion('pareto', [a, b], n);
    x = norminv(1 - (alpha / 2), 0, 1);
    A = (a .^ 2) ./ ((a - 1) .^ 2) - (a ./ (n .* (a - 2) .* ((a -1) .^ 2))) .* x ^ 2;
    B = -(((2 .* a) ./ (a - 1)) .* mean(X));
    C = mean(X) .^ 2;
    delta = B .^ 2 - (4 .* A .* C);
    b_min = (-B - sqrt(delta)) / (2 .* A)
    b_max = (-B + sqrt(delta)) / (2 .* A)
    if(b_min <= b && b_max >= b)
        disp('Interv OK');
    else
        disp('Interv not OK');
    end
end
