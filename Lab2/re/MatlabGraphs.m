subplot(8,2,1);
plot(1:10,geopdf(1:10,1/3),'.r');
title('DiscretePDF Geometric');

subplot(8,2,2);
stairs(1:10,geocdf(1:10,1/3));
title('DiscreteCDF Geometric');

subplot(8,2,3);
plot(1:8,binopdf(1:8,8,3/10),'.r');
title('DiscretePDF Binomial');

subplot(8,2,4);
stairs(1:8,binocdf(1:8,8,3/10));
title('DiscreteCDF Binomial');

subplot(8,2,7);
plot(1:9,poisspdf(1:9,5),'.r');
title('DiscretePDF Poisson');

subplot(8,2,8);
stairs(1:9,poisscdf(1:9,5));
title('DiscreteCDF Poisson');

subplot(8,2,9);
plot(linspace(-4,8),normpdf(linspace(-4,8),0,1));
title('ContinuousPDF Normal');

subplot(8,2,10);
plot(linspace(-4,8),normcdf(linspace(-4,8),0,1));
title('ContinuousCDF Normal');

subplot(8,2,11);
plot(linspace(0,10),exppdf(linspace(0,10),1/2));
title('ContinuousPDF Exponential');

subplot(8,2,12);
plot(linspace(0,10),expcdf(linspace(0,10),1/2));
title('ContinuousCDF Exponential');

subplot(8,2,13);
plot(linspace(0,1),betapdf(linspace(0,1),2,5));
title('ContinuousPDF Beta');

subplot(8,2,14);
plot(linspace(0,1),betacdf(linspace(0,1),2,5));
title('ContinuousCDF Beta');

subplot(8,2,15);
plot(linspace(0,4),gampdf(linspace(0,4),1/4,1));
title('ContinuousPDF Gamma');

subplot(8,2,16);
plot(linspace(0,4),gamcdf(linspace(0,4),1/4,1));
title('ContinuousCDF Gamma');