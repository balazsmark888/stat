function add2_2()
expCount = 10000;
n = 0;
p = 0;

prob = 0.46;

alpha = 0.04;
probToReach = 1 - alpha;

mu = prob;
epsilon = 0.092;

figure;
while(p < probToReach)
    n = n + 1;
    plot([n-1 n],[probToReach probToReach],'g');
    hold on;
    k = 0;
    for i = 1:expCount
        X = UMersenneTwisterRNG(n) < prob;
        if(abs(mean(X) - mu) < epsilon)
            k = k + 1;
        end
    end
        p = k / expCount;
        stem(n,p);
        drawnow;
end

n
%119
end