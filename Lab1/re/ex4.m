function ex4()
    
    n = 10000;
    counter1 = 0;
    counter2 = 0;
    seed = 3123;
    
    figure();
    hold on;
    for i=1:n
        
       [x,seed] = URealRNG(seed,2,1,2,1);
       [y,seed] = URealRNG(seed,2,0,3,1);
       
       if(y < x)
           counter1 = counter1 + 1;
           plot(y,x,'.g');
           drawnow();
       else
           plot(y,x,'.r');
           drawnow();
       end
       
       if(abs(x-y) < 1/3)
          
           counter2 = counter2 + 1;
           plot(y,x,'.b');
           drawnow();
       else
           plot(y,x,'.');
           drawnow();
       end
        
    end
    
    p1 = counter1 / n
    p2 = counter2 / n

end