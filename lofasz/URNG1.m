% -----------
% Description
% -----------
% By means of parameters $m = 2^{31}-1, a= 7^5$ and c = 0, the function implements a specialized
% version of the linear congruential generator X_{i+1} = \left(aX_{i} +c \right) \mod m, i \ge 2. 
% -----
% Input
% -----
% initial_value     - an integer that must be \ge 1 and < 2^{31}-1 and which represents 
%                     the first element of the output sequence
% n                 - the size of the output sequence
%
% ------
% Output
% ------
% \mathbf{X} = \left[X_i\right]_{i=1}^n - a sequence of uniformly distributed integer random numbers
% new_initial_value - an integer that can be used as an initial value in
%                     case of consecutive random sequence generations
%
function [X, new_initial_value] = URNG1(initial_value, n)

m = 2^31-1;
a = 7^5;
c = 0;

[X, new_initial_value] = LinearCongruentialGenerator(m, a, c, initial_value, n);