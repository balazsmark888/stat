function ex3()

    f = @(x) 3/184 .* ((x - 1/2) .* (12 - 2 .* x) + 3);
    n = 10000;
    f(13/4)
    m = 13/4;
    a = 1;
    b = 5;
    X = rejection(f,a,b,m,n);
    figure
    hist(X);
    
    figure
    plot(linspace(a,b,n),f(linspace(a,b,n)));
    
    1/2 * mean(X) + 4
    sqrt(var(X)/4)

end
