function [X,m,c] = Kozrefog(n)
X = zeros(1,n);
alpha = 1 / sqrt(exp(1));
beta = 1 / 2;
gamma = sqrt(2);
m = 0;
c = 0;
for i = 1:n
    l = false;
    while(l == false)
        c = c + 1;
        u = UMersenneTwisterRNG();
        v = UMersenneTwisterRNG();
        y = tan(pi * v);
        s = beta * y ^ 2;
        w = (alpha * u) / (beta + s);
        if(abs(y) > gamma)
            l = false;
        else
            l = (w <= 1 - s);
        end
        if(l == false)
            l = (w <= exp(-s));
            m = m + 1;
        end
    end
    X(i) = y;
end
m = m / n;
c = c / n;
end