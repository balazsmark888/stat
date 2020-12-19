function [pMin, pMax] = ConfIntPascal(alpha,n)

    m = 6;
    p = 0.01
    
    y = DiscretePDF(0:10,'pascal',[m,p]);
    x(1,:) = 0:length(y)-1;
    x(2,:) = y(:);
    X = InversionByBinarySearch(x,n);
    
    x = norminv(1-alpha/2,0,1);
    
    s = mean(X);
    
    A = n * s / m;
    B = x^2 - 2 * s * n;
    C = m * n - x^2;
    
    delta = B .^ 2 - 4 .* A .* C;
    
    lims = [(-B - sqrt(delta)) ./ (2 .* A),(-B + sqrt(delta)) ./ (2 .* A)];
    
    pMin = min(lims);
    pMax = max(lims);
    
    
    if(p < pMax && p > pMin)
        disp('In interval');
    else
        disp('Not in interval');
    end
end