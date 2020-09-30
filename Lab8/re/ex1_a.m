function n = ex1_a(expCount,prob)
n = 300;
p = 0;

epsilon = 0.05 ;
alpha = 0.05 ;
%sigma = sqrt(prob * (1-prob));
mu = prob;

probToReach = 1 - alpha;

figure;
while(p < probToReach)
    n = n + 1;
    %plot([n-1 n],[probToReach probToReach],'g');
    hold on;
    k = 0;
    for i = 1:expCount
        X = (UMersenneTwisterRNG(n) < prob);
        if(abs(mean(X) - mu) < epsilon)
            k = k + 1;
        end
    end
        p = k / expCount;
        stem(n,p);
        drawnow;
end
end
    