function test()

    n = 10000;
    X = DiscretePDF(1:8,'binomial',[8,3/10]);
    x = [1:8;X];
    Y = InversionByBinarySearch(x,n);
    hist(Y);
    IlleszkedesvizsgalatDiszkretKifejtett(Y,'binomial',0.04);
end