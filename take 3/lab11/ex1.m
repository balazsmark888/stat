function ex1()

    X = [499.4; 504.1; 501.5; 502.4; 498.3; 502.8; 496.2; 501.6; 497.0; 498.8; 501.9; 503.7; 501.6; 499.5; 500.6; 495.3; 497.8; 496.9; 503.2; 498.8;500.1; 497.8; 498.1; 501.2];
    alpha = 0.05;
    sigma_0 = 3.5;

    [~, ~, ~, ~, H] = Chi2Test(X, sigma_0, alpha, 'left');
     
    if(H == 1)
        disp('A toltogep hibaja kisebb az eloirtnal');
    else
        disp('A toltogep hibaja nem kisebb az eloirtnal');
    end

end