function ex3()
    
    n = 10000;
    counter = 0;
    seed = 3123;
    figure();
    hold on;
    for i=1:n
        
       [x,seed] = URealRNG(seed,2,0,2,1);
       [y,seed] = URealRNG(seed,2,0,3,1);
       
       if(x + y > 1 && 1 + y > x && 1 + x > y)
           counter = counter + 1;
           plot(x,y,'.g');
       else
           plot(x,y,'.r');
       end
       
       
       drawnow();
        
    end
    
    p = counter / n

end