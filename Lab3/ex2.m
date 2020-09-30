subplot(2,2,1);
hist(BisectionMethod('normal',[0,1],-2.1,2,0.01,2000));
title('Bisection 0 1');

subplot(2,2,2);
hist(StringMethod('normal',[0,1],-2.1,2,0.01,2000));
title('String 0 1');