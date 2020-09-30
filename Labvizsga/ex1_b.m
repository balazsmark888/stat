Y = [347.6 349.1 347.2 351.1 349.2 346 348.1 350.2 351.1 348.8 347.1 349];

alpha = 0.02;
mu_0 = 350;

[ci_t, ci_mu, t_value, p_value, H] = TTest(Y,mu_0,alpha,'left')

if(H)
    disp('Kevesebb kekszet tolt');
else
    disp('Nem tolt kevesebb kekszet');
end