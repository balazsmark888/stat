function ex1(d_t, par, n)

switch(d_t)
        case{'exponential',1}
            lambda = par(1);
            X = ExactInversion('exponential',lambda,n);    
            teorExpectedValue = 1 / lambda;
            teorDeviation = 1 / lambda^2;
            
        case{'normal',2}
           Z = rej5(5000);
           X=par(2) .* Z+par(1);
           teorExpectedValue = par(1);
           teorDeviation = par(2);
           
            
        case{'geometrial',3}
            p = par(1);
            X=Csonkolas('geometrial',p,n);
            teorExpectedValue = 1 / p;
            teorDeviation = (1 - p) / p ^ 2;
            
        case{'poisson',4}
            lambda = par(1);
            X = Poisson(lambda,n);
            teorExpectedValue = lambda;
            teorDeviation = sqrt(lambda);
            
        case{'gamma',5}
            a = par(1);
            b = par(2);
            if (a <= 0 || b <= 0)
                error('wrong parameter');
            end
            X = gamrnd(a,b,1,n);
            teorExpectedValue = a * b;
            teorDeviation = sqrt(a * b ^ 2);
end
    
    realExpectedValue = mean(X)
    realDeviation = sqrt(var(X))
    
    diffExpValue = abs(teorExpectedValue-realExpectedValue);
    diffDeviation = abs(teorDeviation-realDeviation);

end