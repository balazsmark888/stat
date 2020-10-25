function ex2()
    n = 1000;
    
    figure
    
    subplot(1,2,1);
    hist(BisectionMethod('normal',[0,1],-2,2,0.01,n));
    title('Bisection 0 1');

    subplot(1,2,2);
    hist(StringMethod('normal',[0,1],-2.0,2,0.01,n));
    title('String 0 1');

end
