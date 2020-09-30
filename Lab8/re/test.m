function test()

    n = 10000;
    a=4;
    b=2;
    X = NewtonRaphsonMethod2('gamma',[a,b],0,24,eps,6,n);
    hist(X);

end

