function f = ContinuousPDF(x,distribution_type,parameters)
sort(x);

switch(distribution_type)
    case 'normal'
        mu = parameters(1);
        sigma = parameters(2);
        
        if(sigma <= 0)
            error('The standard deciaton must be a strictly positive number!');
        end
        f = (1.0/sqrt(2.0*pi) / sigma) * exp(-(x - mu).^ 2 / 2.0 / sigma^2);
        
    case 'exponential'
        lambda = parameters(1);
        if(lambda <= 0)
            error('Incorrect parameters');
        end
        f = lambda*exp(-x.*lambda);
        
    case 'beta'
        a = parameters(1);
        b = parameters(2);
        if(a<=0 || b<=0)
            error('Incorrect parameters');
        end
        f = x.^(a - 1) .* (1 - x) .^ (b - 1) / integral(@(x) x .^ (a-1) .* (1 - x) .^ (b-1),0,1);
        
    case 'gamma'
        a = parameters(1);
        b = parameters(2);
        if(a <= 0 || b <= 0)
            error('Incorrect parameters');
        end
        f = zeros(1,length(x));
        for i = 1 : length(x)
            if(x(i) > 0)
                f(i) = x(i)^ (a - 1) .* exp(-x(i) ./ b) ./ (b ^ a * gamma(a));
            else
                f(i) = 0;
            end
        end
        
    case 'uniform'
        a = parameters(1);
        b = parameters(2);
        f = ones(1,length(x)) * 1 / (b - a);
        
    case 'pearson'
        nn = parameters(1);
        sigma = parameters(2);
        if(sigma <= 0 || nn < 1)
            error('Incorrect parameters');
        end
        f = zeros(1,length(x));
        for i = 1 : length(x)
            if(not(x(i) <= 0))
                f(i) = (x(i)^ (nn / 2 - 1) .* exp(-x(i) ./ (2 * sigma^2))) ./ (2 ^ (nn / 2) * sigma ^ nn * gamma(nn / 2));
            end
        end
        
    case 'student'
        nn = parameters(1);
        if(nn < 1)
            error('Incorrect parameters');
        end
        f = gamma((nn+1)/2)/(sqrt(nn*pi)*gamma(nn/2)) .* (1 + (x.^2)./nn).^(-(nn+1)/2);
        
    case 'lab3'
        f = zeros(1,length(x));
        for i = 1 : length(x)
            if(x(i) <= 0)
                f(i) = 0;
            else
                if(x(i) <= 1/2)
                    f(i) = 4 * x(i);
                else
                    if(x <= 1)
                        f(i) = 4 - 4 * x(i);
                    else
                        f(i) = 0;
                    end
                end
            end
        end
end