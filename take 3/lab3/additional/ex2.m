function ex2()
  
  figure
    n = 1000;
    subplot(1,2,1);
    hist(NewtonRaphsonMethod2('snedecor-fischer',[3,1.2],0.1,11,eps,4,n));
    title('snedecor-fischer 3 | 1.2');
    
    subplot(1,2,2);
    hist(NewtonRaphsonMethod2('snedecor-fischer',[50,20],0.1,4,eps,5,n));
    title('snedecor-fischer 50 | 20');
  
end