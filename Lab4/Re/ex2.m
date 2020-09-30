function ex2()

    n = 10000;
    sigma = 6;
    mu = 2;
    
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
    
    sigma = 2;
    mu = 3;
    
    X4 = X2 .* sigma + mu;
    
    
    figure
    hist(X4);
    title('N 3 2');
end