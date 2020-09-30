function ex1()

figure

    n = 10000;
    subplot(2,2,1);
    plot(linspace(0,1,n),ContinuousPDF(linspace(0,1,n),'lab3',[]));
    
    subplot(2,2,2);
    plot(linspace(0,1,n),ContinuousCDF(linspace(0,1,n),'lab3',[]));
    
    subplot(2,2,3);
    hist(ExactInversion('lab3',[],n));
    
    subplot(2,2,4);
    plot(linspace(0,1,n),ContinuousCDF(linspace(0,1,n),'lab3-2',[]));

end