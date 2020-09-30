function n = Kiserlet(prob_to_reach, param, exp_count)

    n = 0;
    p = 0;
    mu = param;
    eps = 0.05;
    B = [0 1; 1-param param];
    while(p < prob_to_reach)
        n = n + 4;
        plot([n-1 n], [prob_to_reach prob_to_reach], 'r');
        hold on;
        k = 0;
        for i = 1 : exp_count
            X = InversionBySequentialSearch(B, n);
            if(abs(mean(X) - mu) < eps)
                k = k + 1;
            end
        end
        p = k / exp_count;
        stem(n, p);
        drawnow;
    end
end

