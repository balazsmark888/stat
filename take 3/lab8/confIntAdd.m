function [tMin, tMax] = confIntAdd(alpha,n)

    t = 50
        
    %X = rej2(f,a,b,max,n);
    X = ExactInversion('lab8_add',t,n);
    
    hist(X);
    
    x = norminv(1-alpha/2,0,1);
    
    s = mean(X);
    
    w = 3 * sqrt(pi);
    
    u = 3 * x * sqrt(4 - pi) / sqrt(n);
        
    tMin = s / (w + u);
    tMax = s / (w - u);
    
    
    if(t < tMax && t > tMin)
        disp('In interval');
    else
        disp('Not in interval');
    end

end