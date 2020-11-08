function ex2()
  
    plot(linspace(0.1,11),ContinuousPDF(linspace(0.1,11),'snedecor-fischer',[3,1.2]));
    title('ContinuousPDF Snedecor-Fischer');
  
    drawnow
    figure
    
    plot(linspace(0.1,4),ContinuousPDF(linspace(0.1,4),'snedecor-fischer',[50,20]));
    title('ContinuousPDF Snedecor-Fischer');

    drawnow
    figure
    
    n = 1000;
    
    hist(NewtonRaphsonMethod2('snedecor-fischer',[3,1.2],0.1,11,eps,1,n));
    title('snedecor-fischer 3 | 1.2');
    
    drawnow
    figure
    
    hist(NewtonRaphsonMethod2('snedecor-fischer',[50,20],0.1,4,eps,1,n));
    title('snedecor-fischer 50 | 20');
  
end