function n = OptimalCPUSize(expCount)
n = 0;
p = 0;
alpha = 0.1;
probToReach = 1 - alpha;
mu = 2800; %specific
sigma = 708;%specific
epsilon = 224;%specific
while(p < probToReach)
    n = n + 1;
    plot([n-1 n],[probToReach probToReach],'g');
    hold on;
    k = 0;
    for i = 1:expCount
        X = Laplace(n)*sigma + mu; %specific
        if(abs(mean(X) - mu) < epsilon)
            k = k + 1;
        end
    end
        p = k / expCount;
        stem(n,p);
        drawnow;
end
end
    