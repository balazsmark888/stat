function ex1()

    figure;
    subplot(1,3,1)
    plot(linspace(0,1),ContinuousPDF(linspace(0,1),'lab3',[]));
    
    subplot(1,3,2)
    plot(linspace(0,1),ContinuousCDF(linspace(0,1),'lab3',[]));
    
    subplot(1,3,3)
    hist(ExactInversion('lab3',[],10000));

end