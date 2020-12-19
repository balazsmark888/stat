function ex3()

    n = 10000;
    k = 40;
    p1g = [1 2; 2/3 1/3];
    p1k = [1 2; 2/5 3/5];
    
    pt1 = [1 2 3 4 5 6 7; 5/36 1/18 1/18 1/6 5/36 10/36 1/6];
    pt2 = [1 2 3 4 5 6 7; 1/12 1/4 1/12 1/8 1/12 1/8 1/4];
    

    points = zeros(1,n);
    rounds = zeros(1,n);
    
    for i = 1 : n
        
        done = 0;
        gcounter = 0;
        kcounter = 0;
        round = 0;
        
        
        while(done == 0)
            
            round = round + 1;
            g1 = InversionByBinarySearch(p1g,1);
            k1 = InversionByBinarySearch(p1k,1);
            
            if(g1 == 1)
                
                gshots = InversionByBinarySearch(pt1,2);
                
                if(mod(sum(gshots),2) == 0)
                    
                    if(gshots(1) == 3 && gshots(2) == 5 || gshots(1) == 5 && gshots(2) == 3 || gshots(1) == 6 && gshots(2) == 4 || gshots(1) == 4 && gshots(2) == 6)
                        
                        gcounter = gcounter + 1;
                        
                        if(gcounter == 4)
                            
                            rounds(i) = round;
                            
                        end
                        
                    end
                    
                end
                
            else
                
                gshots = InversionByBinarySearch(pt2,2);
                
                if(mod(sum(gshots),2) == 0)
                    
                    if(gshots(1) == 2 && gshots(2) == 4 || gshots(1) == 4 && gshots(2) == 2 || gshots(1) == 5 && gshots(2) == 1 || gshots(1) == 1 && gshots(2) == 5 || gshots(1) == 5 && gshots(2) == 7 || gshots(1) == 7 && gshots(2) == 5)
                        
                        gcounter = gcounter + 1;
                        
                        if(gcounter == 4)
                            
                            rounds(i) = round;
                            
                        end
                        
                    end
                else
                    
                end
            end
            
            if(k1 == 1)
                kshots = InversionByBinarySearch(pt1,2);
                
                if(mod(kshots(1) * kshots(2),3) == 0)
                    
                    if(kshots(1) == 1 && kshots(2) == 3 || kshots(1) == 3 && kshots(2) == 1 || kshots(1) == 1 && kshots(2) == 6 || kshots(1) == 6 && kshots(2) == 1 || kshots(1) == 2 && kshots(2) == 3 || kshots(1) == 3 && kshots(2) == 2 || kshots(1) == 2 && kshots(2) == 6 || kshots(1) == 6 && kshots(2) == 2 || kshots(1) == 7 && kshots(2) == 3 || kshots(1) == 3 && kshots(2) == 7 || kshots(1) == 7 && kshots(2) == 6 || kshots(1) == 6 && kshots(2) == 7)
                        
                        kcounter = kcounter + 1;
                        
                    end
                end
                
            else
                kshots = InversionByBinarySearch(pt2,2);
                
                 if(mod(kshots(1) * kshots(2),3) == 0)
                     
                     if(kshots(1) == 3 && kshots(2) == 2 || kshots(1) == 2 && kshots(2) == 3 || kshots(1) == 3 && kshots(2) == 5 || kshots(1) == 5 && kshots(2) == 3 || kshots(1) == 6 && kshots(2) == 2 ||kshots(1) == 2 && kshots(2) == 6 || kshots(1) == 6 && kshots(2) == 5 || kshots(1) == 5 && kshots(2) == 6)
                         
                         kcounter = kcounter + 1;
                         
                     end
                 end
            end
            
            if(round == k)
                
                points(i) = gcounter + kcounter;
                
            end
            
            if(gcounter >= 4 && round >= k)
                done = 1;
            end
            
        end
        
    end
   
    muGabor = mean(rounds)
    muMutual = mean(points)
    varMutual = var(points)
   
end