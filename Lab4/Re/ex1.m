function ex1()

    f = @(x) 3/4 .* x .^ 2 .*(2 - x);
    n = 10000;
    m = 4/3;
    a = 0;
    b = 2;
    X = rejection1(f,a,b,m,n);
    figure
    hist(X);
    
    figure
    plot(linspace(a,b,n),f(linspace(a,b,n)));

end
