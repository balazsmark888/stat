function ex5a()

    n = 10000;
   
    steps = 0;
    for i = 1:n
        probs = [1 2 3;18/50 12/50 20/50];
        count = 50;
        aCount = 18;
        bCount = 12;
        cCount = 20;
        done = 0;
        while(done ~= 1)
            x = InversionByBinarySearch(probs,1);
            steps = steps + 1;
            count = count - 1;
            switch(x)
                case 1
                    aCount = aCount - 1;
                case 2
                    bCount = bCount - 1;
                case 3
                    cCount = cCount - 1;
                    done = 1;
            end

            probs(2,1) = aCount / count;
            probs(2,2) = bCount / count;
            probs(2,3) = cCount / count;
        end
        
    end
    
    p = steps/n

end