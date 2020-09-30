function X = ex2(n)
    n = round(n);
    if(n < 1)
        error('Wrong parameter: n!');
    end

    f = @(x, y) 2/pi^2 * sin(x + y).^2;

    X = zeros(2, n);
    M = 1; a = 0; b = pi;
    subplot(3,1,1);
    hold on;
    for i = 1:n
        U1 = UMersenneTwisterRNG();
        V1 = UMersenneTwisterRNG();
        U2 = UMersenneTwisterRNG();
        V2 = UMersenneTwisterRNG();
        Y1 = a + (b - a) * V1;
        Y2 = a + (b - a) * V2;

        if (Y1 > 0 && Y1 < pi && Y2 > 0 && Y2 < pi)
            f_ertek = f(Y1, Y2);
        else
            f_ertek = 0;
        end

        while (U1 * M > f_ertek && U2 * M > f_ertek)
            U1 = UMersenneTwisterRNG();
            V1 = UMersenneTwisterRNG();
            U2 = UMersenneTwisterRNG();
            V2 = UMersenneTwisterRNG();
            Y1 = a + (b - a) * V1;
            Y2 = a + (b - a) * V2;

            if (Y1 > 0 && Y1 < pi && Y2 > 0 && Y2 < pi)
                f_ertek = f(Y1, Y2);
            else
                f_ertek = 0;
            end
        end

        X(1, i) = Y1;
        X(2, i) = Y2;
        plot(Y1, Y2, 'r.');
        
    end
    hold off;
    [A,B] = meshgrid(0:0.05:pi,0:0.05:pi);
    C = f(A,B);
    subplot(3,1,2);
    hist3(X');
    subplot(3,1,3);
    surf(A,B,C);
end