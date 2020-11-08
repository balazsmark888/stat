function ex2()

    n = 10000;
    
    f = @(x,y) 1/88 .* ((1 + x).^2 + x./3 - 4.*y.^2 + 10);
    
    X = zeros(2, n);
    M = 47/264;
    a1 = -2;
    a2 = -1;
    b1 = 2;
    b2 = 1;
    for i = 1:n
        U1 = UMersenneTwisterRNG();
        V1 = UMersenneTwisterRNG();
        V2 = UMersenneTwisterRNG();
        Y1 = a1 + (b1 - a1) * V1;
        Y2 = a2 + (b2 - a2) * V2;

        if (Y1 > a1 && Y1 < b1 && Y2 > a2 && Y2 < b2)
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

            if (Y1 > a1 && Y1 < b1 && Y2 > a2 && Y2 < b2)
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
    
    [A,B] = meshgrid(-2:0.1:2,-1:0.05:1);
    C = f(A,B);
    figure;
    hist3(X');
    drawnow;
    
    figure;
    surf(A,B,C);

end