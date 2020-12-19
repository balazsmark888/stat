function [ Y, osszeg ] = Korrelalt( ro, mu1, sigma1, mu2, sigma2, n )
    
    mu = zeros(2,1);
    mu(1,1) = mu1;
    mu(2,1) = mu2;
    
    osszeg = [sigma1^2, ro*sigma1*sigma2; 
             ro*sigma1*sigma2, sigma2^2];
    L = [sigma1, 0; 
        ro*sigma2, sigma2*sqrt(1-ro^2)];
    
    T = 2*pi;
    X = zeros(2,1);
    Y = zeros(2,n);
    
    for k = 1:n 
         U1 = UMersenneTwisterRNG(1);
         U2 = UMersenneTwisterRNG(1);
         R = sqrt(-2*log(U1));
         theta = T*U2;
         X(1,1) = R*cos(theta);
         X(2,1) = R*sin(theta);
         S = mu + L*X;  
         Y(1,k) = S(1,1);
         Y(2,k) = S(2,1);
    end
end

