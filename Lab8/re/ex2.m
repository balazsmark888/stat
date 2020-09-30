function ex2()

    n = 3000;
    alpha = 0.05;
    [bMin,bMax] = ConfIntGamma(alpha,n)
    [lMin,lMax] = ConfIntPoisson(alpha,n)
    
%     [xx,z] = TestingCLT('poisson',3,1000,1000);
%     figure;
%     hist(xx);
%     figure;
%     hist(z);
%     
%     [xx,z] = TestingCLT('gamma',[4,2],1000,1000);
%     figure;
%     hist(xx);
%     figure;
%     hist(z);

end