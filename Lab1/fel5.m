matchCount = 100000;
seed = 3;

wins = 0;
iterations = 0;

for i = 1:matchCount
    while(1)
        iterations = iterations + 1;
        [X,seed] = URealRNG(seed,2,0,1,2);
        if(X(1) < 1/3)
            wins = wins + 1;
            break;
        end
        iterations = iterations + 1;
        if(X(2) < 1/3)
            break;
        end
    end
end
disp(wins/matchCount);
disp(iterations/matchCount);

wins = 0;
iterations = 0;
last = 1;

for i = 1:matchCount
    while(1)
        iterations = iterations + 1;
        [X,seed] = URealRNG(seed,2,0,1,2);
        if(X(1) < 1/3 && last < 1/3)
            wins = wins + 1;
            break;
        end
        iterations = iterations + 1;
        if(X(2) < 1/3)
            break;
        end
        last = X(1);
    end
end
disp(wins/matchCount);
disp(iterations/matchCount);
