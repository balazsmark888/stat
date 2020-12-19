function [X, actual, counter] = Additional_5(n)
    
    f = @(x) 3/(2*pi)*(sin(3*x).^2 + 1/2);
    h1 = @(x) 3/(4*pi) + x.^2*27/(2*pi) - x.^4*81/(2*pi) + x.^6*243/(5*pi) - x.^8*2187/(70*pi) + x.^10*2187/(175*pi) - x.^12*6561/(1925*pi) + x.^14*118098/(175175*pi) - x.^16*177147/(1751750*pi);
    h2 = @(x) 3/(4*pi) + x.^2*27/(2*pi) - x.^4*81/(2*pi) + x.^6*243/(5*pi) - x.^8*2187/(70*pi) + x.^10*2187/(175*pi) - x.^12*6561/(1925*pi) + x.^14*118098/(175175*pi);
    c = 3/2;
    g = @(x) 3/(2*pi);
    cg = @(x) c .* g(x);
    
    alpha = -pi/3;
    beta = pi/3;
    
    X = zeros(1,n);
    
    counter = 0;
    actual = 0;
    
    for i = 1:n
        
        L = false;
        while(L == false)
            
            counter = counter + 1;
            u = UMersenneTwisterRNG();
            v = UMersenneTwisterRNG();
            y = v * (beta - alpha) + alpha;
            
            w = u * cg(y);
            
            if(w < h2(y))
                if(w < h1(y))
                    L = true;
                    X(i) = y;
                else
                    actual = actual + 1;
                    if(w < f(y))
                        L = true;
                        X(i) = y;
                    end
                end
            end
            
        end
        
    end
    figure
    hist(X)
    figure
    plot(linspace(alpha,beta),h1(linspace(alpha,beta)),'.r');
    hold on
    plot(linspace(alpha,beta),h2(linspace(alpha,beta)),'.g');
    plot(linspace(alpha,beta),f(linspace(alpha,beta)),'b');
    plot(linspace(alpha,beta),cg(linspace(alpha,beta)),'.m');
    
    counter / n
    actual / n
    theoretic = 177147/1751750*2*pi^16/17/3^17
    
end