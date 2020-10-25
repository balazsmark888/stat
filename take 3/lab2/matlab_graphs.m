figure;

subplot(1,2,1);
plot(1:5,hygepdf(1:5,100,20,5),'.r');
title('DiscretePDF HyperGeometric');

subplot(1,2,2);
stairs(1:5,hygecdf(1:5,100,20,5));
title('DiscreteCDF HyperGeometric');

figure;

subplot(1,2,1);
plot(1:10,geopdf(1:10,1/3),'.r');
title('DiscretePDF Geometric');

subplot(1,2,2);
stairs(1:10,geocdf(1:10,1/3));
title('DiscreteCDF Geometric');

figure;

subplot(1,2,1);
plot(1:8,binopdf(1:8,8,3/10),'.r');
title('DiscretePDF Binomial');

subplot(1,2,2);
stairs(1:8,binocdf(1:8,8,3/10));
title('DiscreteCDF Binomial');

figure;

subplot(1,2,1);
plot(1:9,nbinpdf(1:9,3,1/2),'.r');
title('DiscretePDF Pascal');

subplot(1,2,2);
stairs(1:9,nbincdf(1:9,3,1/2));
title('DiscreteCDF Pascal');

figure;

subplot(1,2,1);
plot(1:9,poisspdf(1:9,5),'.r');
title('DiscretePDF Poisson');

subplot(1,2,2);
stairs(1:9,poisscdf(1:9,5));
title('DiscreteCDF Poisson');

figure;

subplot(1,2,1);
plot(linspace(-4,8),normpdf(linspace(-4,8),0,1));
title('ContinuousPDF Normal');

subplot(1,2,2);
plot(linspace(-4,8),normcdf(linspace(-4,8),0,1));
title('ContinuousCDF Normal');

figure;

subplot(1,2,1);
plot(linspace(0,10),exppdf(linspace(0,10),1/2));
title('ContinuousPDF Exponential');

subplot(1,2,2);
plot(linspace(0,10),expcdf(linspace(0,10),1/2));
title('ContinuousCDF Exponential');

figure;

subplot(1,2,1);
plot(linspace(0,1),betapdf(linspace(0,1),2,5));
title('ContinuousPDF Beta');

subplot(1,2,2);
plot(linspace(0,1),betacdf(linspace(0,1),2,5));
title('ContinuousCDF Beta');

figure;

subplot(1,2,1);
plot(linspace(0,4),gampdf(linspace(0,4),1/4,1));
title('ContinuousPDF Gamma');

subplot(1,2,2);
plot(linspace(0,4),gamcdf(linspace(0,4),1/4,1));
title('ContinuousCDF Gamma');

figure;

subplot(1,2,1);
plot(linspace(-4,4),tpdf(linspace(-4,4),1));
title('ContinuousPDF Student');

subplot(1,2,2);
plot(linspace(-4,4),tcdf(linspace(-4,4),1));
title('ContinuousCDF Student');

figure;

subplot(1,2,1);
plot(linspace(0,3),fpdf(linspace(0,3),100,100));
title('ContinuousPDF Snedecor-Fischer');

subplot(1,2,2);
plot(linspace(0,3),fcdf(linspace(0,3),100,100));
title('ContinuousCDF Snedecor-Fischer');