seed = 231241;
count = 10;
iterCount = 10000;

n=0;

for i=1:iterCount
    good = 0;
    repairable = 0;
    dump = 0;
    for j=1:count
        [X,seed] = URealRNG(seed,2,0,30-j,1);
        if(X(1)<=6 - repairable)
            repairable = repairable + 1;
        elseif(X(1)<=10 - repairable - dump)
            dump = dump + 1;
        else
            good = good + 1;
        end
    end
    if(good == 7 && repairable == 2 && dump == 1)
        n=n+1;
    end
end

n = n/iterCount;

disp(n)