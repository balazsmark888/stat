function ex2()

     n = 10000;
    
    f = @(x,y) (2/35) .* (x + 2 .* y .* (y ./ 4 + 1) + 1/6);
    
    X = zeros(2, n);
    M = 11/21;
    a1 = 0;
    b1 = 3;
    a2 = 1;
    b2 = 2;
    for i = 1:n
        U1 = UMersenneTwisterRNG();
        V1 = UMersenneTwisterRNG();
        V2 = UMersenneTwisterRNG();
        Y1 = a1 + (b1 - a1) * V1;
        Y2 = a2 + (b2 - a2) * V2;

        if (Y1 >= a1 && Y1 <= b1 && Y2 >= a2 && Y2 <= b2)
            value = f(Y1, Y2);
        else
            value = 0;
        end

        while (U1 * M > value)
            U1 = UMersenneTwisterRNG();
            V1 = UMersenneTwisterRNG();
            V2 = UMersenneTwisterRNG();
            Y1 = a1 + (b1 - a1) * V1;
            Y2 = a2 + (b2 - a2) * V2;

            if (Y1 >= a1 && Y1 <= b1 && Y2 >= a2 && Y2 <= b2)
                value = f(Y1, Y2);
            else
                value = 0;
            end
        end
        X(1, i) = Y1;
        X(2, i) = Y2;        
    end
    
    
    figure;
    hist3(X');
    drawnow;
    
    figure;
    plot(X(1,:),X(2,:),".g");
    drawnow;
    
    [A,B] = meshgrid(linspace(a1,b1,50),linspace(a2,b2,50));
    C = f(A,B);
    figure;
    surf(A,B,C);
    
    expectedValue = mean(X(1,:))
    deviation = var(X(1,:))
    
    expectedValue = mean(X(2,:))
    deviation = var(X(2,:))

end