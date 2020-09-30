X = [352.8 351.9 350 348.3 351.1 349.2 352.6 348.9 347.5 349.2 351 350];
Y = [347.6 349.1 347.2 351.1 349.2 346 348.1 350.2 351.1 348.8 347.1 349];

alpha = 0.01;
mu_0 = 350;

[ci_f, ci_lambda, f_value, p_value, H] = FTest2D(X,Y,alpha,'left')

if(H)
    disp('Az elso gep hibaja nagyobb');
else
    disp('Az elso gep hibaja nem nagyobb');
end

