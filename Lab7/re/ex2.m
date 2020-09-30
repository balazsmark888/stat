function ex2()

     n = 10000;
    
    f = @(x,y) 1/12.*(2.*x.^2 + 1/3.*y);
    
    X = zeros(2, n);
    M = 13/18;
    a = 0;
    b = 2;
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
    end
    
    
    figure;
    hist3(X');
    drawnow;
    
    figure;
    plot(X(1,:),X(2,:),".g");
    drawnow;
    
    [A,B] = meshgrid(linspace(a,b,50),linspace(a,b,50));
    C = f(A,B);
    figure;
    surf(A,B,C);
    
    expectedValue = mean(X(:))
    deviation = sqrt(var(X(:)))

end