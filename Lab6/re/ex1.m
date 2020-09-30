function ex1()

    n = 10000;
    
    [X1,X2] = Marsaglia(n);
    
    figure;
    plot(X1,X2,".g");
    
    X = zeros(n,2);
    X(:,1) = X1(1,:);
    X(:,2) = X2(1,:);
    figure;
    hist3(X);
    
    [X1,~] = Korrelalt(0.75,0,2,5,1,n);
    
    figure;
    plot(X1(1,:),X1(2,:),".r");
    
    figure;
    hist3(X1');
end