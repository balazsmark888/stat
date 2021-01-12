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
        s = gamma((nn+1) / 2);
        nev = sqrt(nn * pi) * gamma(nn/2);
        f = zeros(1,length(x));
         for i = 1 : length(x)
             f(i) = (s / nev) * ((1 + ((x(i) ^ 2) / nn)) ^ (-((nn+1) / 2)));
         end
        %f = (gamma((nn+1)/2)/(sqrt(nn*pi)*gamma(nn/2))) .* (1 + ((x .^ 2) ./ nn)) .^ (-(nn+1) / 2);
        
    case 'lab3'
        f = zeros(1,length(x));
        for i = 1 : length(x)
            if(x(i) < 0 || x(i) > 1)
                f(i) = 0;
            else
                if(x(i) <= 1/3)
                    f(i) = 1/2*(6*x(i) + 1);
                else
                    if(x(i) <= 1)
                        f(i) = 5/3 - x(i);
                    else
                        f(i) = 0;
                    end
                end
            end
        end
     case 'lab3_add'
        f = zeros(1,length(x));
        for i = 1 : length(x)
            if(x(i) < 1 || x(i) > 2)
                f(i) = 0;
            else
                f(i) = (2*x(i)^3 + 5*x(i)) / 15;
            end
        end
    case 'snedecor-fischer'
        m = parameters(1);
        nn = parameters(2);
        normConst = gamma(m/2)*gamma(nn/2)/gamma(m/2+nn/2);
        f = zeros(1,length(x));
        for i = 1 : length(x)
            if(x(i) >= 0)
                f(i) = 1 / normConst * (m / nn)^(m / 2) * x(i) ^ (m / 2 - 1) / (1 + m / nn * x(i))^((m + nn) / 2);
            end
        end
    case 'lab2_plus1'
        f = zeros(1,length(x));
        for i = 1 : length(x)
           if(x(i) > -2)
               if(x(i) <= -1)
                   f(i) = 11 / 16 * (x(i) ^ 2 - 1) / 12;
               else
                   if(x(i) <= 1)
                       f(i) = (x(i) + 1) / 6;
                   else
                       if(x(i) <= 2)
                           f(i) = (x(i) + 5) / 18;
                       else
                           if(x(i) <= 3)
                               f(i) = 11 / 16 * (x(i) - 2) ^ 2;
                           else
                               f(i) = 0;
                           end
                       end
                   end
               end
           else
               f(i) = 0;
           end
        end
end