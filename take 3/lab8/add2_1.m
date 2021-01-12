function add2_1()
expCount = 10000;
n = 0;
p = 0;

prob = 0.32;

alpha = 0.02;
probToReach = 1 - alpha;

mu = prob;
epsilon = 0.08;

figure;
while(p < probToReach)
    n = n + 1;
    plot([n-1 n],[probToReach probToReach],'g');
    hold on;
    k = 0;
    for i = 1:expCount
        X = UMersenneTwisterRNG(n) < mu;
        if(abs(mean(X) - mu) < epsilon)
            k = k + 1;
        end
    end
        p = k / expCount;
        stem(n,p);
        drawnow;
end

n
%183
end