subplot(1,2,1);
plot(linspace(-3,4),ContinuousPDF(linspace(-3,4),'lab2_plus1'));
title('lab2 plus1 PDF');

subplot(1,2,2);
plot(linspace(-3,4),ContinuousCDF(linspace(-3,4),'lab2_plus1',[]));
title('lab2 plus1 CDF');

figure;

subplot(1,2,1);
plot(1:8,DiscretePDF(1:8,'lab2_plus2'),'.r');
title('lab2 plus2 PDF');

subplot(1,2,2);
stairs(1:8,DiscreteCDF(1:8,'lab2_plus2',[]));
title('lab2 plus2 CDF');

