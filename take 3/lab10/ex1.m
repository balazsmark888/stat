function ex1()

    X = [332.86; 329.18; 331.96; 334.14; 332.91; 328.79; 335.67; 332.69;332.87; 336.52; 329.50; 335.97; 332.61; 331.73; 327.94; 329.16;330.64; 331.30; 329.29; 330.12];
    alpha = 0.02;
    mu_0 = 330;
    
    [~, ~, ~, ~, H] = TTest(X, mu_0, alpha, 'right');

    if(H == 1)
        disp('A gep atlagosan tobbet tolt.');
    else
        disp('A gep atlagosan nem tolt tobbet.');
    end
end