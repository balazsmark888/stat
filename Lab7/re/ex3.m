function ex3()

    n = 10000;
    x = [1 2; 33/1000 967/1000];
    
    
    X = zeros(1,n);    
    for i = 1 : n
       
        counter = 0;
        done = 0;
        while(done == 0)
           
            sick = InversionByBinarySearch(x,1);
            counter = counter + 1;
            if(sick == 1)
                done = 1;
            end 
        end
        X(i) = counter;
    end
    
    mean(X)
    var(X)
end