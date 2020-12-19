function [bMin, bMax] = ConfIntUniform(alpha,n)

    a = 0;
    b = 5
    
    X = UMersenneTwisterRNG(n) .* (b - a) + a;
    
    x = norminv(1-alpha/2,0,1);
    
    s = mean(X);
    
    A = -x * sqrt(3);
    B = -6 * s * sqrt(n);
    C = 6 * sqrt(n);
    
    delta = B .^ 2 - 4 .* A .* C;
    
    lims = [(-B - sqrt(delta)) ./ (2 .* A),(-B + sqrt(delta)) ./ (2 .* A)];
    
    bMin = min(lims);
    bMax = max(lims);
    
    
    if(b < bMax && b > bMin)
        disp('In interval');
    else
        disp('Not in interval');
    end
end