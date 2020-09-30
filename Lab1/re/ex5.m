function ex5(p)

    n = 10000;
    seed = 1;
    hitCount = 0;
    gamesA = 0;
    gamesB = 0;
    
    for i=1:n
        
        scoreA = 0;
        scoreB = 0;
        
        while(not(scoreA >= 4 && scoreB <= (scoreA - 2) || scoreB >= 4 && (scoreA <= scoreB - 2)))
            
           [hit,seed] = URealRNG(seed,2,0,1,1);
           hitCount = hitCount + 1;
           if(hit <= p)
               scoreA = scoreA + 1;
           else
               scoreB = scoreB + 1;
           end
            
        end
        if(scoreA >= 4 && scoreB <= scoreA - 2)
            
            gamesA = gamesA + 1;
            
        else
            gamesB = gamesB + 1;
            
        end
        
    end
    
    avgHits = hitCount / n
    A = gamesA / n
end