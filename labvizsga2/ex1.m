function ex1()

    X = [753.96 752.49 754.35 744.16 747.82 753.04 753.96 748.96 747.33 749.51 749 754.89 738.92 747.16];
    Y = [739.45 744.5 744.89 750.11 757.68 748.35 751.73 758.31 738.27 753.57 740.12 757.68 766 757.77];
    
    alpha = 0.02;
    mu_0 = 750;
        
     [ci_t, ci_mu, t_value, p_value, H] = TTest(Y, mu_0, alpha, 'left')
         
     alpha = 0.04;
     
     [ci_f, ci_lambda, f_value, p_value, H] = FTest2D(X, Y, alpha, 'right')

end