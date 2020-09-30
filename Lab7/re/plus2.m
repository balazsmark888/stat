function plus2()

    n = 10000;
    
    f = @(x,y) 2/81 .* x .* y .^ 2;
    
    X = zeros(2, n);
    M = f(3,3);
    a = 0;
    b = 3;
    counter = 0;
    for i = 1:n
        U1 = UMersenneTwisterRNG();
        V1 = UMersenneTwisterRNG();
        V2 = UMersenneTwisterRNG();
        Y1 = a + (b - a) * V1;
        Y2 = a + (b - a) * V2;

        if (Y1 >= a && Y1 <= b && Y2 >= a && Y2 <= b)
            value = f(Y1, Y2);
        else
            value = 0;
        end

        while (U1 * M > value)
            U1 = UMersenneTwisterRNG();
            V1 = UMersenneTwisterRNG();
            V2 = UMersenneTwisterRNG();
            Y1 = a + (b - a) * V1;
            Y2 = a + (b - a) * V2;

            if (Y1 >= a && Y1 <= b && Y2 >= a && Y2 <= b)
                value = f(Y1, Y2);
            else
                value = 0;
            end
        end
        X(1, i) = Y1;
        X(2, i) = Y2;
        if(Y1 >= 2 && Y1 <=3 && Y2 >=1)
            counter = counter + 1;
        end
    end
    ex = mean(X(1,:))
    ey = mean(X(2,:))
    
    vx = var(X(1,:))
    vy = var(X(2,:))
    
    prob = counter / n

end