function ex3()

figure
    n = 1000;
    subplot(1,2,1);
    hist(NewtonRaphsonMethod2('gamma',[9,1/2],1/5,10,eps,4,n));
    title('Gamma 9 | 1/2');
    
    subplot(1,2,2);
    hist(NewtonRaphsonMethod2('gamma',[2/3,2],1/5,10,eps,5,n));
    title('Gamma 2/3 | 2');

end