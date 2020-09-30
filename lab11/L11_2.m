function L11_2()
    X = [401, 399, 399, 400, 402, 399, 401, 400, 398, 399, 401, 401, 402, 400, 401, 399, 400];
    Y = [401, 401, 400, 400, 397, 398, 404, 401, 404, 399, 400, 400, 397, 399, 397, 401, 398, 400, 399, 398];

    alpha = 0.04;

    [ci_f, ci_lambda, f_value, p_value, H] = FTest2D(X,Y,alpha,'both');

    if (H==0)
        disp('Fails dont differ')
    else
        disp('Fails differ')
    end

    equal_std = ~(H);
    alpha = 0.01;

    [ci_t, ci_delta, t_value, p_value, H] = TTest2D(X,Y,equal_std,alpha,'both');

    if (H==0)
        disp('Weights dont differ')
    else
        disp('Weights differ')
    end
end