function f = DiscretePDF(x,distribution_type,parameters)
sort(x);
x = round(x);
n = length(x);

switch(distribution_type)
    case 'geometric'
        p = parameters(1);
        if(p<0 || p>1)
            error('Wrong parameter!');
        end
        f = zeros(1,n);
        q = 1-p;
        for i = 1:n
            if(x(i) < 1)
                error('Incorrect input data!');
            else
                f(i) = q^(x(i) - 1) * p;
            end
        end
    case 'binomial'
        m = parameters(1);
        p = parameters(2);
        if(p<=0 || p>=1 || m < 1)
            error('Wrong parameter');
        end
        f = zeros(1,n);
        q = 1 - p;
        for i = 1:n
            if(x(i) < 0)
                error('Incorrect input data!');
            else
                f(i) = nchoosek(m,x(i))*(p^x(i))*q^(m-x(i));
            end
        end
    case 'pascal'
        m = parameters(1);
        p = parameters(2);
        if(n<1 || p<=0 || p>=1)
            error('Wrong parameter');
        end
        f = zeros(1,n);
        q = 1-p;
        for i = 1:n
            if(x(i)< 0)
                error('Incorrect input data!');
            else
                f(i) = nchoosek(m + x(i) - 1,x(i))*p^m*q^x(i);
            end
        end
    case 'poisson'
        p = parameters(1);
        if(p<=0)
            error('Wrong parameter');
        end
        f = zeros(1,n);
        for i = 1:n
            if(x(i)<0)
                error('Incorrect input data');
            else
                f(i) = p^x(i)*exp(-p)/factorial(x(i));
            end
        end
        
end