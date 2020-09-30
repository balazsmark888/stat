X = [331.13 333.85 328.26 331.81 330.67 327.85 329.09 330.72 332.51 330.82 327.17 336.37 331.52 329.87 331.50];
Y = [332.75 327.44 326.69 327.49 320.87 334.46 331.01 327.66 334.25 324.69 329.25 330.99 330.97 327.32];

alpha = 0.02;

[ci_t, ci_delta, t_value, p_value, H] = TTest2D(X,Y,false,alpha,'right');

if(H)
    disp('A masodik gep atlagos toltotomege kisebb');
else
    disp('A masodik gep atlagos toltotomege nem kisebb');
end