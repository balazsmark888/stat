
% n = OptimalCPUSize(0.9, 1000)

function n = OptimalCPUSize( prob_to_reach, exp_count )

n = 0;
p = 0;

mu = 2800;
sigma = 708;
eps = 224;

while(p < prob_to_reach)
    n = n + 3;
    plot([0 n], [prob_to_reach prob_to_reach], 'r');
    hold on;
    
    k = 0;
    for i = 1 : exp_count
        X = ElutasitasModszereCauchy(mu, sigma, n);
        if(abs(mean(X) - mu) < eps)
            k = k + 1;
        end
    end
    
    p = k/exp_count;
    stem(n, p);
    drawnow;
end

end

