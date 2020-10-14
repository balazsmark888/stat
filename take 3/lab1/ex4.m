function ex4()
    
   p = 0.12;
   n = 10000;
   a = 0;
   b = 0;
   vals = zeros(1,n);
   
   for i = 1:n
      counter = 0;
       for j =  1:20
           val = UMersenneTwisterRNG();
           if(val <= p)
               counter = counter + 1;
           end
       end
       
       if(counter >= 4 && counter < 10)
           a = a + 1;
       end
       
       if(counter <= 8)
           b = b + 1;
       end
       
       vals(1,i) = counter;
       
   end
   a / n
   b / n
   
   mean(vals)

end