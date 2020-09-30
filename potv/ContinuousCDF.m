% -----------
% Description
% -----------
% The function evaluates the values of different continuous cumulative distribution 
% functions.
%
% -----
% Input
% -----
% \mathbf{x} = \left[x_i\right]_{i=1}^n - an increasing sequence of real numbers
%
% distribution_type                     - a string that identifies the distribution (e.g., 'exponential', 
%                                         'normal', 'chi2', 'gamma', 'beta', 'Student', etc.)
%
% parameters                            - an array of parameters which characterize the distribution 
%                                         specified by distribution_type
%
% ------
% Output
% ------
% \mathbf{F} = \left[F_i\right]_{i=1}^n = \left[F(x_i)\right]_{i=1}^n - values of the given cumulative distribution function
%
% ----
% Hint
% ----
% Since the input sequence \mathbf{x} = \left[x_i\right]_{i=1}^n \subset \mathbb{R} is increasing it is sufficient to calculate 
% the values
%
% F_1 = \int_{x_{\min}}^{x_1}  f(t) dt,
% F_2 = F_1 + \int_{x_1}^{x_2} f(t) dt, 
% ...,
% F_n = F_{n-1} + \int_{x_{n-1}}^{x_n} f(t) dt,
%
% where f denotes the probability density function that corresponds to F and x_{min}
% represents the minimal value of the random variable (e.g., in case of the gamma  
% distribution x_{min} = 0, while in the case of the normal distribution x_{min} = -inf).
%
function F = ContinuousCDF(x, distribution_type, parameters)

f = @(x) ContinuousPDF(x, distribution_type, parameters);

n = length(x);
F = zeros(1, n);

switch(distribution_type)
    case { 'normal', 'gamma', 'plusz', 'other', 'pearson' }
        x_min = -Inf;
        F(1) = integral(f, x_min, x(1));

        for i = 2:n
            F(i) = F(i - 1) + integral(f, x(i - 1), x(i));
        end
    case 'exponential'
        lambda = parameters(1);

        for i = 1 : n
            if x(i) <= 0
                F(i) = 0;
            else
                F(i) = 1 - exp(-lambda * x(i));
            end
        end
    case 'uniform'
        a = parameters(1);
        b = parameters(2);
        
        for i = 1 : n
            if x(i) < a
                F(i) = 0;
            elseif x(i) >= a && x(i) <= b
                F(i) = (x(i) - a) / (b - a);
            else
                F(i) = 1;
            end
        end
end
end