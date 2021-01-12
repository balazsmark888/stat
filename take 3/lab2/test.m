f = ContinuousPDF(linspace(-4,4,10),'student',10)
g = tpdf(linspace(-4,4,10),10)

figure;
hold on;
plot(linspace(-4,4,10),g,'g');
plot(linspace(-4,4,10),f, 'r');


f2 = ContinuousCDF(linspace(-4,4,10),'student',10)
g2 = tcdf(linspace(-4,4,10),10)

figure(2);
hold on;
plot(linspace(-4,4,10),g2,'g');
plot(linspace(-4,4,10),f2,'r');

x0 = -4 - 10^9;
x1 = -4;

fx = @(x)ContinuousPDF(x,'student',10);

integral(fx,x0,x1)
quad(fx,x0,x1)