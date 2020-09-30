function [] = FELADAT_4()

numOfTestCases = 100000;

kedvezoEsetek_a = 0;
kedvezoEsetek_b = 0;

for i = 1 : numOfTestCases
    total = 29;
    
    marcipanos = 10;
    csokis = 8;
    tejszinhabos = 5;
    dios = 6;
    
    Dice = [ 1, 2, 3, 4; marcipanos/total, csokis/total, tejszinhabos/total, dios/total ];
    
    for j = 1 : 3
        output = InversionBySequentialSearch(Dice, 'LEcuyer', 1);
        
        if output == 1
            marcipanos = marcipanos - 1;
        elseif output == 2
            csokis = csokis - 1;
        elseif output == 3
            tejszinhabos = tejszinhabos - 1;
        else
            dios = dios - 1;
        end
        
        total = total - 1;
        Dice = [ 1, 2, 3, 4; marcipanos/total, csokis/total, tejszinhabos/total, dios/total ];
    end
    
    if dios == 6
        kedvezoEsetek_a = kedvezoEsetek_a + 1;
    end
    
    if csokis <= 6
        kedvezoEsetek_b = kedvezoEsetek_b + 1;
    end
end

probability_a = kedvezoEsetek_a / numOfTestCases
probability_b = kedvezoEsetek_b / numOfTestCases

end

