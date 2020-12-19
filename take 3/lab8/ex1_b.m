function n = ex1_b(expCount)
n = 0;
p = 0;
alpha = 0.1;
probToReach = 1 - alpha;
mu = 2800;
sigma = 708;
epsilon = 224;
figure;
while(p < probToReach)
    n = n + 1;
    plot([n-1 n],[probToReach probToReach],'g');
    hold on;
    k = 0;
    for i = 1:expCount
        X = Laplace(n)*sigma + mu;
        if(abs(mean(X) - mu) < epsilon)
            k = k + 1;
        end
    end
        p = k / expCount;
        stem(n,p);
        drawnow;
end
end
    