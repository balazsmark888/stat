function ex1()

    figure;
    subplot(1,3,1)
    plot(linspace(-1,2),ContinuousPDF(linspace(-1,2),'lab3',[]));
    
    subplot(1,3,2)
    plot(linspace(-1,2),ContinuousCDF(linspace(-1,2),'lab3',[]));
    
    subplot(1,3,3)
    hist(ExactInversion('lab3',[],10000));

end