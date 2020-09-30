function ex2()

    X = [6.8; 7.4; 7.2; 7.5; 6.4; 6.9; 7.1; 6.9; 7.0; 6.8; 7.3; 6.5; 7.2; 7.5; 7.6; 6.8; 7.2; 6.9; 7.0; 7.1];
    Y = [6.8; 7.2; 6.7; 7.0; 6.8; 7.2; 6.8; 7.1; 6.8; 6.7; 7.0; 6.7; 6.8; 6.9; 7.1; 6.6; 7.0; 6.6; 6.8; 6.7];
    alpha = 0.03;

    [~, ~, ~, ~, H] = FTest2D(X, Y, alpha, 'both');
    
    if(H == 0)
        disp('A gepek azonos hibaval dolgoznak');
    else
        disp('A gepek nem dolgoznak azonos hibaval');
    end
    
    alpha = 0.04;
    [~, ~, ~, ~, H2] = TTest2D(X, Y, ~H, alpha, 'right');
    
    if(H2 == 1)
        disp('Az elso gyaregysegben tobb selejtes termeket allitanak elo, mint a masodikban');
    else
        disp('Az elso gyaregysegben nem allitanak elo tobb selejtes termeket, mint a masodikban');
    end
    
end