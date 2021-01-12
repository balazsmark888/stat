function ex2()

    n = 10000;
    alpha = 0.05;
    [pMin,pMax] = ConfIntPascal(alpha,n)
    [bMin,bMax] = ConfIntUniform(alpha,n)

end