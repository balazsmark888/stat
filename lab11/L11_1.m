function L11_1()
    X = [449, 448, 450, 449, 450, 451, 449, 451, 450, 451, 450, 450, 448, 452, 450, 448, 451, 449, 448, 449, 450, 449, 450, 451];
    sigma0 = 1.6;
    alpha = 0.05;

    [ci_chi2, ci_std, chi2_value, p_value, H] = Chi2Test(X,sigma0,alpha,'right');

    if (H==0)
        disp('No recalibration needed\')
    else
        disp('Recalibration needed\')
    end
end