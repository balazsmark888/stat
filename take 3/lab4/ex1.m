function ex1()

    f = @(x) 2/87 * (1 + 2 .* x .* (9 - x .^ 2));
    n = 10000;
    m = 1/2;
    a = 0;
    b = 3;
    X = rej2(f,a,b,m,n);
    figure
    hist(X);
    
    figure
    plot(linspace(a,b,n),f(linspace(a,b,n)));

end
