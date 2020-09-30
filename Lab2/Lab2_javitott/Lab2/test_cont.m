function test_cont

x = linspace(-4,4,1000);
plot(x,ContinuousPDF(x,'student',1));
title('ContinousPDF Student');

figure
plot(x,ContinuousCDF(x,'student',1));
title('ContinousCDF Student');


x = linspace(0,4,1000);
figure
plot(x,ContinuousPDF(x,'gamma',[1/4,1]));
title('ContinousPDF Gamma');

figure
plot(x,ContinuousCDF(x,'gamma',[1/4,1]));   
title('ContinousCDF Gamma');


x = linspace(0,10,1000);
figure
plot(x,ContinuousPDF(x,'pearson',[1,1]));
title('ContinousPDF Pearson');

figure
plot(x,ContinuousCDF(x,'pearson',[1,1]));   
title('ContinousCDF Pearson');

end