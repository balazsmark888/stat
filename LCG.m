function [X, newInitialValue] = LCG(m,a,c,initialValue,n)

X = zeros(1,n);
X(1) = initialValue;
for i = 2:n
    X(i) = mod(a * X(i-1) + c,m);
end
newInitialValue = mod(a * X(n) + c, m);