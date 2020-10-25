figure;

subplot(1,2,1);
plot(linspace(-3,4),ContinuousPDF(linspace(-3,4),'lab2_plus1'));
title('lab2 plus1 PDF');

subplot(1,2,2);
plot(linspace(-3,4),ContinuousCDF(linspace(-3,4),'lab2_plus1',[]));
title('lab2 plus1 CDF');

figure;

x = 1:8;
n = length(x);
f = DiscretePDF(x,'lab2_plus2');


subplot(1,2,1);
plot(x, f, '.r');
title('lab2 plus2 PDF');

F = zeros(1,n);

F(1) = f(1);

for i = 2:n
   F(i) = F(i-1) + f(i); 
end

subplot(1,2,2);
stairs(x, F);
title('lab2 plus2 CDF');

