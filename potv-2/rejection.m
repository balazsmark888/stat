function X = rejection(f,a,b,m,n)

    X = zeros(1,n);
    
    for i = 1:n
        u = UMersenneTwisterRNG();
        v = UMersenneTwisterRNG();
        
        y = a + (b - a) * v;
        
        while(u*m > f(y))
            
            u = UMersenneTwisterRNG();
            v = UMersenneTwisterRNG();
            y = a + (b - a) * v;
            
        end
        
        X(i) = y;
    end
    
end