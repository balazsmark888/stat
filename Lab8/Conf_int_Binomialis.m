function [p_min, p_max] = Conf_int_Binomialis(alpha, n)

    m = 10;
    p = 1 / 2;
    X = zeros(1, n);
    B = [0 1; 1-p p];
    for i = 1 : n
       X(i) = sum(InversionBySequentialSearch(B, m));
    end
    x = norminv(1 - (alpha / 2), 0, 1);
    A = m .^ 2 + (m / n) .* x .^ 2;
    B = -(2 .* m .* mean(X) + (m / n) .* x .^ 2);
    C = mean(X) .^ 2;
    delta = B .^ 2 - (4 .* A .* C);
    p_min = (-B - sqrt(delta)) / (2 .* A)
    p_max = (-B + sqrt(delta)) / (2 .* A)
    if(p_min <= p && p_max >= p)
        disp('Interv OK');
    else
        disp('Interv not OK');
    end
end

