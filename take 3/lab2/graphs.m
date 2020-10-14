subplot(1,2,1);
plot(1:5,DiscretePDF(1:5,'hypergeometric',[100,20,5]),'.r');
title('DiscretePDF HyperGeometric');

subplot(1,2,2);
stairs(1:5,DiscreteCDF(1:5,'hypergeometric',[100,20,5]));
title('DiscreteCDF HyperGeometric');

figure;

subplot(1,2,1);
plot(1:10,DiscretePDF(1:10,'geometric',1/3),'.r');
title('DiscretePDF Geometric');

subplot(1,2,2);
stairs(1:10,DiscreteCDF(1:10,'geometric',1/3));
title('DiscreteCDF Geometric');

figure;

subplot(1,2,1);
plot(1:8,DiscretePDF(1:8,'binomial',[8,3/10]),'.r');
title('DiscretePDF Binomial');

subplot(1,2,2);
stairs(1:8,DiscreteCDF(1:8,'binomial',[8,3/10]));
title('DiscreteCDF Binomial');

figure;

subplot(1,2,1);
plot(1:9,DiscretePDF(1:9,'pascal',[3,1/2]),'.r');
title('DiscretePDF Pascal');

subplot(1,2,2);
stairs(1:9,DiscreteCDF(1:9,'pascal',[3,1/2]));
title('DiscreteCDF Pascal');

figure;

subplot(1,2,1);
plot(1:9,DiscretePDF(1:9,'poisson',5),'.r');
title('DiscretePDF Poisson');

subplot(1,2,2);
stairs(1:9,DiscreteCDF(1:9,'poisson',5));
title('DiscreteCDF Poisson');

figure;

subplot(1,2,1);
plot(linspace(-4,8),ContinuousPDF(linspace(-4,8),'normal',[0,1]));
title('ContinuousPDF Normal');

subplot(1,2,2);
plot(linspace(-4,8),ContinuousCDF(linspace(-4,8),'normal',[0,1]));
title('ContinousCDF Normal');

figure;

subplot(1,2,1);
plot(linspace(0,10),ContinuousPDF(linspace(0,10),'exponential',1/2));
title('ContinousPDF Exponential');

subplot(1,2,2);
plot(linspace(0,10),ContinuousCDF(linspace(0,10),'exponential',1/2));
title('ContinousCDF Exponential');

figure;

subplot(1,2,1);
plot(linspace(0,1),ContinuousPDF(linspace(0,1),'beta',[2,5]));
title('ContinousPDF Beta');

subplot(1,2,2);
plot(linspace(0,1),ContinuousCDF(linspace(0,1),'beta',[2,5]));
title('ContinousCDF Beta');

figure;

subplot(1,2,1);
plot(linspace(0,4),ContinuousPDF(linspace(0,4),'gamma',[1/4,1]));
title('ContinousPDF Gamma');

subplot(1,2,2);
plot(linspace(0,4),ContinuousCDF(linspace(0,4),'gamma',[1/4,1]));   
title('ContinousCDF Gamma');

figure;

subplot(1,2,1);
plot(linspace(-4,4),ContinuousPDF(linspace(-4,4),'student',1));
title('ContinousPDF Student');

subplot(1,2,2);
plot(linspace(-4,4),ContinuousCDF(linspace(-4,4),'student',1));
title('ContinousCDF Student');

figure;

subplot(1,2,1);
plot(linspace(0,3),ContinuousPDF(linspace(0,3),'snedecor-fischer',[100,100]));
title('ContinuousPDF Snedecor-Fischer');

subplot(1,2,2);
plot(linspace(0,3),ContinuousCDF(linspace(0,3),'snedecor-fischer',[100,100]));
title('ContinuousCDF Snedecor-Fischer');