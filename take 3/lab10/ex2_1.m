function ex2_1()

    mu0 = 92.5;
    X = [92.4; 92.4; 92.7; 92.7; 92.0; 93.2; 92.5; 92.7; 92.4; 93.0; 92.5; 91.9;91.8; 92.5; 92.0; 92.5; 92.4; 92.7; 93.0; 93.2];
    Y = [91.6; 92.2; 92.7; 93.5; 92.0; 92.1; 93.2; 92.4; 92.1; 91.7; 91.8; 92.5;91.0; 91.4; 92.0; 92.2; 92.5; 91.2; 92.3; 91.3];
    
    alpha = 0.05;
    
    [~, ~, ~, ~, H] = TTest(X, mu0, alpha, 'both');

    if(H == 0)
        disp('Az elso ekszerkeszito mester ezustekszereinek nemesfem tartalma megegyezik az eloirt ertekkel.');
    else
        disp('Az elso ekszerkeszito mester ezustekszereinek nemesfem tartalma nem egyezik meg az eloirt ertekkel.');
    end
    
    
    alpha = 0.02;
    
    [~, ~, ~, ~, H] = TTest2D(X,Y,0,alpha,'both');
    if(H == 1)
        [~, ~, ~, ~, H] = TTest2D(X,Y,0,alpha,'right');
        if(H==1)
            disp('Az elso tobb ezustot tartalmaz');
        else
            disp('Az masodik tobb ezustot tartalmaz');
        end
    else
        disp('Ugyanannyi ezustot tartalmaznak');
    end
end
