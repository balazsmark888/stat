function[] = ex1()

X = [596.2 598.9 601.9 587.1 596.1 591.2 598.3 596.2 602.8 598.9 600.9 598.7 596.5 595.1 598.8];
Y = [597.8 598.4 601.0 598.0 600.2 600.2 596.5 597.3 598.6 599.0 601.0 597.7 602.2 597.2 598.2];

alpha = 0.03;


[ci_t, ci_mu, t_value, p_value, H] = TTest(X,600,alpha,'left')

alpha = 0.05;


[ci_f, ci_lambda, f_value, p_value, H] = FTest2D(X,Y,alpha,'right')

end