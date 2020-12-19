function [bMin,bMax] = ConfIntGamma(alpha,n,start)

    b = 2;
    a = 4;
    X = NewtonRaphsonMethod2('gamma',[a,b],0,24,eps,start,n);
    x = norminv(1-alpha/2,0,1);
    s = nanmean(X);
    
    bMin = s / (4 + 2 * x / sqrt(n));
    bMax = s / (4 - 2 * x / sqrt(n));
    
    if(b < bMax && b > bMin)
        disp('In interval');
    else
        disp('Not in interval');
    end

end