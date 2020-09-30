function [X, newInitialValue] = URealRNG(initialValue,generatorType,alpha,beta,n)

switch(generatorType)
    case {'URNG1',1}
        m = 2^31 - 1;
        [X,newInitialValue] = URNG1(initialValue,n);
        X = X ./ m;
    case {'URNG2',2}
        m = 2^31 - 1;
        [X,newInitialValue] = URNG2(initialValue,n);
        X = X ./ m;
end

X = alpha + X .* (beta-alpha);