function ex2_1()

    X = [1195; 1197; 1202; 1193; 1195; 1196; 1195; 1197; 1202; 1194; 1196; 1198; 1202; 1196; 1197; 1200; 1195];
    Y = [1197; 1199; 1198; 1201; 1202; 1196; 1197; 1201; 1203; 1198; 1196; 1197; 1203; 1199; 1196; 1204; 1199];
    
    alpha = 0.03;
    
    [~, ~, ~, ~, H] = TTest2D(X, Y, 0, alpha, 'both');

    if(H == 0)
        disp('A ket gep csoveinek atlaghossza egyenlo');
    else
        [~, ~, ~, ~, H] = TTest2D(X, Y, 1, alpha, 'right');
        if(H == 1)
             disp('Az elso gep csoveinek atlaghossza nagyobb');
        else
            disp('A masodik gep csoveinek atlaghossza nagyobb');
        end
    end
    
end
