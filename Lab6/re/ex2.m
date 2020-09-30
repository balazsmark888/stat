function ex2()

    n = 10000;
    
    f = @(x,y) 6/7.*(x.^2 + x.*y./2);
    
    X = zeros(2, n);
    M = 12/7;
    a = 0;
    b1 = 1;
    b2 = 2;
    for i = 1:n
        U1 = UMersenneTwisterRNG();
        V1 = UMersenneTwisterRNG();
        V2 = UMersenneTwisterRNG();
        Y1 = a + (b1 - a) * V1;
        Y2 = a + (b2 - a) * V2;

        if (Y1 > 0 && Y1 < 1 && Y2 > 0 && Y2 < 2)
            value = f(Y1, Y2);
        else
            value = 0;
        end

        while (U1 * M > value)
            U1 = UMersenneTwisterRNG();
            V1 = UMersenneTwisterRNG();
            V2 = UMersenneTwisterRNG();
            Y1 = a + (b1 - a) * V1;
            Y2 = a + (b2 - a) * V2;

            if (Y1 > 0 && Y1 < 1 && Y2 > 0 && Y2 < 2)
                value = f(Y1, Y2);
            else
                value = 0;
            end
        end
        X(1, i) = Y1;
        X(2, i) = Y2;        
    end
    figure;
    plot(X(1,:),X(2,:),".g");
    drawnow;
    
    [A,B] = meshgrid(0:0.05:1,0:0.1:2);
    C = f(A,B);
    figure;
    hist3(X');
    drawnow;
    
    figure;
    surf(A,B,C);

end