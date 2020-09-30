function X = Csonkolas(d_t,par,n)
lambda = 0;
switch(d_t)
    case 'geometrial'
        lambda = -log(1-par);
end
X = ExactInversion('exponential',lambda,n);
X = ceil(X);
end