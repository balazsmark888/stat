function plus_1()
    d = 3;
    mu = [0 2 0];
    sigma = [3 2 1; 1 2 1; 1 2 1];
    n = 10000;
    [~,Y] = MulDimKorrelalt(d, mu, sigma, n);
    
    scatter3(Y(:,1),Y(:,2),Y(:,3),'.c');
    
    d = 4;
    mu = [1 0 1 0];
    sigma = [4 1 1 1; 1 2 1 1; 1 1 3 1; 1 1 6 1];
    n = 10000;

    [~,Y] = MulDimKorrelalt(d, mu, sigma, n);
    
    figure;
   	scatter3(Y(:,1),Y(:,2),Y(:,3),'.g');
   
    figure;
   	scatter3(Y(:,2),Y(:,3),Y(:,4),'.r');
    
    figure;
   	scatter3(Y(:,1),Y(:,2),Y(:,4),'.b');
    
    figure;
   	scatter3(Y(:,1),Y(:,3),Y(:,4),'.m');
end