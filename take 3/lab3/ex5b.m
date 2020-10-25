function ex5b()

    n = 10000;
   
    steps = 0;
    for i = 1:n
        probs = [1 2 3 4;15/40 1/4 7/40 1/5];
        count = 400;
        aCount = 150;
        bCount = 100;
        cCount = 70;
        dCount = 80;
        done = 0;
        animalCount = 0;
        while(done == 0)
            x = InversionByBinarySearch(probs,1);
            count = count - 1;
            steps = steps + 1;
            switch(x)
                case 1
                    aCount = aCount - 1;
                case 2
                    bCount = bCount - 1;
                    animalCount = animalCount + 1;
                    if(animalCount == 3)
                        done = 1;
                    end
                case 3
                    cCount = cCount - 1;
                case 4
                    dCount = dCount - 1;
            end

            probs(2,1) = aCount / count;
            probs(2,2) = bCount / count;
            probs(2,3) = cCount / count;
            probs(2,4) = dCount / count;
        end
       
    end
    steps / n
    ceil(steps / n)
end