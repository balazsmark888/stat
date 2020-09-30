subplot(8,2,1);
plot(1:10,DiscretePDF(1:10,'geometric',1/3),'.r');
title('DiscretePDF Geometric');

subplot(8,2,2);
stairs(1:10,DiscreteCDF(1:10,'geometric',1/3));
title('DiscreteCDF Geometric');

subplot(8,2,3);
plot(1:8,DiscretePDF(1:8,'binomial',[8,3/10]),'.r');
title('DiscretePDF Binomial');

subplot(8,2,4);
stairs(1:8,DiscreteCDF(1:8,'binomial',[8,3/10]));
title('DiscreteCDF Binomial');

subplot(8,2,5);
plot(1:9,DiscretePDF(1:9,'pascal',[3,1/2]),'.r');
title('DiscretePDF Pascal');

subplot(8,2,6);
stairs(1:9,DiscreteCDF(1:9,'pascal',[3,1/2]));
title('DiscreteCDF Pascal');

subplot(8,2,7);
plot(1:9,DiscretePDF(1:9,'poisson',5),'.r');
title('DiscretePDF Poisson');

subplot(8,2,8);
stairs(1:9,DiscreteCDF(1:9,'poisson',5));
title('DiscreteCDF Poisson');

subplot(8,2,9);
plot(linspace(-4,8),ContinuousPDF(linspace(-4,8),'normal',[0,1]));
title('ContinuousPDF Normal');

subplot(8,2,10);
plot(linspace(-4,8),ContinuousCDF(linspace(-4,8),'normal',[0,1]));
title('ContinousCDF Normal');

subplot(8,2,11);
plot(linspace(0,10),ContinuousPDF(linspace(0,10),'exponential',1/2));
title('ContinousPDF Exponential');

subplot(8,2,12);
plot(linspace(0,10),ContinuousCDF(linspace(0,10),'exponential',1/2));
title('ContinousCDF Exponential');

subplot(8,2,13);
plot(linspace(0,1),ContinuousPDF(linspace(0,1),'beta',[2,5]));
title('ContinousPDF Beta');

subplot(8,2,14);
plot(linspace(0,1),ContinousPDF(linspace(0,1),'beta',[2,5]));
title('ContinousCDF Beta');

subplot(8,2,15);
plot(linspace(0,4),ContinuousPDF(linspace(0,4),'gamma',[1/4,1]));
title('ContinousPDF Gamma');

subplot(8,2,16);
plot(linspace(0,4),ContinuousCDF(linspace(0,4),'gamma',[1/4,1]));
title('ContinousCDF Gamma');