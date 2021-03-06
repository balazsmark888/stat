function f = ContinousPDF(x,distribution_type,parameters)
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
        f = x .^ (a - 1) .* exp(-x ./ b) ./ (b ^ a * gamma(a));
    case 'lab3'
        a = parameters(1);
        b = parameters(2);
        if(a <= 0 || b <= 0)
            error('Incorrect parameters');
        end
        f = - (b .* (-x ./ a) .^ b .* exp((-x ./ a) .^ b)) ./ x;
    case 'pearson'
        nn = parameters(1);
        sigma = parameters(2);
        if(sigma <= 0 || nn < 1)
            error('Incorrect parameters');
        end
        f = (x .^ (nn / 2 - 1) .* exp(-x ./ (2 * sigma^2))) ./ (2 ^ (nn / 2) * sigma ^ nn * gamma(nn / 2));
end