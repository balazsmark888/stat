function [bMin, bMax] = ConfIntUniform(alpha,n)

    a = 0;
    b = 16.4
    
    X = UMersenneTwisterRNG(n) .* (b - a) + a;
    
    x = norminv(1-alpha/2,0,1);
    
    s = mean(X);
        
    bMin = s / (1/2 + x / (2 * sqrt(3 * n)));
    bMax = s / (1/2 - x / (2 * sqrt(3 * n)));
    
    
    if(b < bMax && b > bMin)
        disp('In interval');
    else
        disp('Not in interval');
    end
end