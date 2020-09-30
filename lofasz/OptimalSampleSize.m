
% n = OptimalSampleSize(0.95, 1000)

function n = OptimalSampleSize( prob_to_reach, exp_count )

p = 1/2; % Bernoulli distribution parameter

n = 0;
prob_curr = 0;

mu = p;
sigma = sqrt(p*(1-p));
eps = 0.05;

while(prob_curr < prob_to_reach)
    n = n + 5;
    plot([0 n], [prob_to_reach prob_to_reach], 'r');
    hold on;
    
    k = 0;
    for i = 1 : exp_count
        X = binornd(1, p, 1, n);
        if(abs(mean(X) - mu) < eps)
            k = k + 1;
        end
    end
    
    prob_curr = k/exp_count;
    stem(n, prob_curr);
    drawnow;
end

end

