function ex3()

    X = [7.0; 7.6; 6.5; 7.1; 7.4; 8.0; 7.3; 7.0; 7.4; 6.2; 6.6; 7.3; 7.1; 6.5; 6.9];
    Y = [6.0; 6.1; 5.5; 5.6; 6.2; 7.5; 5.8; 5.7; 5.2; 4.8; 5.9; 6.2; 6.0; 5.9; 6.7];
    
    alpha = 0.03;
    
    var1 = var(X);
    var2 = var(Y);
    
    equalStd = abs(var1 - var2) < eps;
    
    [~, ~, ~, ~, H] = TTest2D(X, Y, equalStd, alpha, 'right');
    
    if(H == 1)
        disp('A gyogyszer hatasos');
    else
       disp('A gyogyszer nem hatasos');
    end

end