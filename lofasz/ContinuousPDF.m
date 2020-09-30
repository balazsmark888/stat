function f = ContinuousPDF(x, distribution_type, parameters)

% for safety reasons
x = sort(x);

% get the size of the input array
n = length(x);

% select the corresponding distribution
switch (distribution_type)
    case 'normal'
        % the N(mu,sigma)-distribution has two parameters, where mu in \mathbb{R} and sigma > 0
        mu    = parameters(1);
        sigma = parameters(2);
        
        % check the validity of the distribution parameters
        if (sigma <= 0)
            error('The standard deviation must be a strictly positive number!');
        end
        
        % Allocate memory and evaluate the probability density function f_{N(mu,sigma)
        % for each element of the input array \mathbf{x} = \left[x_i\right]_{i=1}^n.
        %
        % Note that, in this special case, this can be done in a single line of code,
        % provided that one uses the dotted arithmetical operators of MATLAB.
        
        f = (1.0 / sqrt(2.0 * pi) / sigma) * exp(-(x - mu).^ 2 / 2.0 / sigma^2);
    case 'exponential'
        lambda = parameters(1);
        
        if lambda <= 0
            error('Wrong parameter!');
        end
        
        f = zeros(1, n);
        
        for i = 1 : n
            if x(i) <= 0
                f(i) = 0;
            else
               f(i) = lambda * exp(-lambda * x(i));
            end
        end
    case 'uniform'
        a = parameters(1);
        b = parameters(2);
        
        if a >= b
            error('Wrong parameter!');
        end
        
        f = zeros(1, n);
        
        for i = 1 : n
            if x(i) < a || x(i) > b
                f(i) = 0;
            else
                f(i) = 1 / (b - a);
            end
        end
    case { 'gamma', 'pearson' }
        if strcmp(distribution_type, 'gamma')
            a = parameters(1);
            b = parameters(2);
        else
            a = parameters(1) / 2;
            b = 2 * parameters(2)^2;
        end
        
        if a <= 0 || b <= 0
            error('Wrong parameters!');
        end
        
        f = zeros(1, n);
        
        for i = 1 : n
            if x(i) <= 0
                f(i) = 0;
            else
                f(i) = 1 / (b^a * gamma(a)) * x(i)^(a - 1) * exp(-x(i) / b);
            end
        end
    case 'plusz'
        lambda = parameters;
        
        if lambda <= -1
            error('Wrong parameters!');
        end
        
        f = zeros(1, n);
        
        for i = 1 : n
            if x(i) < 0
                f(i) = 0;
            else
                f(i) = (1 + lambda)^2 * x(i) * exp(-x(i) * (1 + lambda));
            end
        end
    case 'other'
        a = parameters(1);
        b = parameters(2);
        
        f = zeros(1, n);
        
        for i = 1 : n
            if x(i) <= 0
                f(i) = 0;
            else
                aux = (x(i) / a) ^ b;
                f(i) = (b * exp(-aux) * aux) / x(i);
            end
        end
end
end