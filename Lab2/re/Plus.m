alpha = 4/15;
beta = 1/15;
f1 = @(x) 4.*x.^2./5;
f2 = @(x) alpha.*(5 - 2.*x);
f3 = @(x) beta.*x.^2;

plot(linspace(0,1),f1(linspace(0,1)));
hold on;
plot(linspace(1,2),f2(linspace(1,2)));
plot(linspace(2,3),f3(linspace(2,3)));