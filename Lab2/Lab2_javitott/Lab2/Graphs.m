subplot(10,2,1);
plot(1:5,DiscretePDF(1:5,'hypergeometric',[100,20,5]),'.r');
title('DiscretePDF HyperGeometric');

subplot(10,2,2);
stairs(1:5,DiscreteCDF(1:5,'hypergeometric',[100,20,5]));
title('DiscreteCDF HyperGeometric');

subplot(10,2,3);
plot(1:10,DiscretePDF(1:10,'geometric',1/3),'.r');
title('DiscretePDF Geometric');

subplot(10,2,4);
stairs(1:10,DiscreteCDF(1:10,'geometric',1/3));
title('DiscreteCDF Geometric');

subplot(10,2,5);
plot(1:8,DiscretePDF(1:8,'binomial',[8,3/10]),'.r');
title('DiscretePDF Binomial');

subplot(10,2,6);
stairs(1:8,DiscreteCDF(1:8,'binomial',[8,3/10]));
title('DiscreteCDF Binomial');

subplot(10,2,7);
plot(1:9,DiscretePDF(1:9,'pascal',[3,1/2]),'.r');
title('DiscretePDF Pascal');

subplot(10,2,8);
stairs(1:9,DiscreteCDF(1:9,'pascal',[3,1/2]));
title('DiscreteCDF Pascal');

subplot(10,2,9);
plot(1:9,DiscretePDF(1:9,'poisson',5),'.r');
title('DiscretePDF Poisson');

subplot(10,2,10);
stairs(1:9,DiscreteCDF(1:9,'poisson',5));
title('DiscreteCDF Poisson');

subplot(10,2,11);
plot(linspace(-4,8),ContinuousPDF(linspace(-4,8),'normal',[0,1]));
title('ContinuousPDF Normal');

subplot(10,2,12);
plot(linspace(-4,8),ContinuousCDF(linspace(-4,8),'normal',[0,1]));
title('ContinousCDF Normal');

subplot(10,2,13);
plot(linspace(0,10),ContinuousPDF(linspace(0,10),'exponential',1/2));
title('ContinousPDF Exponential');

subplot(10,2,14);
plot(linspace(0,10),ContinuousCDF(linspace(0,10),'exponential',1/2));
title('ContinousCDF Exponential');

subplot(10,2,15);
plot(linspace(0,1),ContinuousPDF(linspace(0,1),'beta',[2,5]));
title('ContinousPDF Beta');

subplot(10,2,16);
plot(linspace(0,1),ContinuousPDF(linspace(0,1),'beta',[2,5]));
title('ContinousCDF Beta');

subplot(10,2,17);
plot(linspace(0,4),ContinuousPDF(linspace(0,4),'gamma',[1/4,1]));
title('ContinousPDF Gamma');

subplot(10,2,18);
plot(linspace(0,4),ContinuousCDF(linspace(0,4),'gamma',[1/4,1]));   
title('ContinousCDF Gamma');

subplot(10,2,19);
plot(linspace(-4,4),ContinuousPDF(linspace(-4,4),'student',1));
title('ContinousPDF Student');

subplot(10,2,20);
plot(linspace(-4,4),ContinuousCDF(linspace(-4,4),'student',1));
title('ContinousCDF Student');