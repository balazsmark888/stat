function ex1()

    X = [253; 251; 250; 252; 248; 251; 252; 250; 250; 248; 247; 250; 251; 253; 249; 250; 250; 246; 249; 246; 252; 248];
    alpha = 0.06;
    sigma_0 = 3;

    [~, ~, ~, ~, H] = Chi2Test(X, sigma_0, alpha, 'right');
     
    if(H == 1)
        disp('A toltogep hibaja meghaladja az eloirt 3 grammot');
    else
        disp('A toltogep hibaja nem haladja meg az eloirt 3 grammot');
    end

end