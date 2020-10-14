function ex3()
    
    n = 10000;
    counter = 0;
    occ_counter = 0;
    seed = 3123;
    figure();
    hold on;
    while counter < n
        
       x = UMersenneTwisterRNG();
       x = x * 12 - 2;
       y = UMersenneTwisterRNG();
       y = y * 8;
       
       if(y <= 2 * x + 4 && y >= 0 && y <= 10 - x)
           counter = counter + 1;
           
           if(y <= sqrt(4 - (x - 2) ^ 2))
               plot(x,y,'.g');
               occ_counter = occ_counter + 1;
           else
               if(x > 2 && y >= 8 - x)
                   plot(x,y,'.g');
                   occ_counter = occ_counter + 1;
               else
                   plot(x,y,'.r');
               end
           end
       end
       
        
    end
    drawnow();
    p = occ_counter / n

end