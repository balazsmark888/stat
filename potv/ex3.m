function [] = ex3()
f = @(x) 15/31 * (x^3*(2 - x)^2 + 1/2);
n = 1000000;
X = rej2(f,0,2,f(6/5),n);
mean(X)
sqrt(var(X))
var(X)
end