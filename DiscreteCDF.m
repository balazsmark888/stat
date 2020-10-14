function F = DiscreteCDF(x,d_t,par)
f=@(x)DiscretePDF(x,d_t,par);
x_min = 0;
switch(d_t)
    case{'geometric','uniform'}
        x_min = 1;
    case 'binomial'
        x_min = 0;
    case 'pascal'
        x_min = 0;
    case 'poisson'
        x_min = 0;
end
n = length(x);
F = zeros(1,n);
if(d_t == 'lab2_plus2')
    f = DiscretePDF(x,d_t,par);
    F(1) = f(1);
    for i = 2 : n
        F(i) = F(i - 1) + f(i);
    end
else
    F(1) = sum(f(x_min:x(1)));
    for i=2:n
        F(i) = F(i-1) + sum(f(x(i-1)+1:x(i)));
    end
end
end
