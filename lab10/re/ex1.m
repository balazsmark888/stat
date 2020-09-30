function ex1()

    X = [501; 497; 500; 498; 500; 497; 498; 498; 500; 497; 497; 498; 497; 498; 501; 501; 502; 496];
    alpha = 0.04;
    mu_0 = 500;
    
    [~, ~, ~, ~, H] = TTest(X, mu_0, alpha, 'left');

    if(H == 1)
        disp('Az alkalmazott atlagosan kevesebb szorolapot osztott ki.');
    else
        disp('Az alkalmazott atlagosan nem osztott ki kevesebb szorolapot');
    end
end