subplot(3,1,1);
plot(linspace(1,20,500),ContinousCDF(linspace(0,20,500),'lab3',[5,3]));
subplot(3,1,2);
plot(linspace(1,20,500),ContinousPDF(linspace(0,20,500),'lab3',[5,3]));
subplot(3,1,3);
hist(ExactInversion('lab3',[5,3],5000));