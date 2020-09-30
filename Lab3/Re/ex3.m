function ex3()

figure
    n = 1000;
    subplot(1,2,1);
    hist(NewtonRaphsonMethod2('gamma',[2,2],0,20,eps,6,n));
    title('Gamma 2 2');
    
    subplot(1,2,2);
    hist(NewtonRaphsonMethod2('gamma',[1/2,1],0,10,eps,5,n));
    title('Gamma 1/2 1');

end