function ex2()

    n = 10000;
    mu = 2;
    sigma = 6;
    
    
    X1 = Laplace(n);
    X2 = Cauchy(n);
    X3 = X2 .* sigma + mu;
    
    figure
    hist(X1);
    title('Laplace');
    
    figure
    hist(X2);
    title('Cauchy');
    
    figure
    hist(X3);
    title('N 2 6');
    
    mu = 3;
    sigma = 2;
    
    
    X4 = X2 .* sigma + mu;
    
    
    figure
    hist(X4);
    title('N 3 2');
end