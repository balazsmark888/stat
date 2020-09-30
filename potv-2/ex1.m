function  ex1()

    X = [350.9 349.3 350 351.2 349.5 350.2 351.5 350.4 348.3 352.5 350.1 351.6 351.9 350.3 349.5 348.9 350.6 351.7];
    Y = [352 352.1 351.6 350.7 351.5 350.8 352.1 351.7 350.8 351.7 355.6 350.2 349.4 350.6 351.8 349.6 349.5 350.8];
    
    alpha = 0.03;
    sigma_0 = 1;

    [ci_chi2, ci_std, chi2_value, p_value, H] = Chi2Test(Y, sigma_0, alpha, 'left')
    
    if(H == 1)
        disp('A toltogep hibaja kisebb az eloirtnal.');
    else
        disp('A toltogep hibaja nem kisebb az eloirtnal.');
    end

    
     alpha = 0.07;
     [ci_t, ci_delta, t_value, p_value, H] = TTest2D(X, Y, 0, alpha, 'left')
     
     if(H == 1)
         disp('Az elso gep atlagosan kevesebb tisztitoszert tolt.');
     else
         disp('Az elso gep atlagosan nem tolt kevesebb tisztitoszert.');
     end
     
end