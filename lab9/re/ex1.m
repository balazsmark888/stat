function ex1()

    sigma1 = 2.8;
    sigma2 = 2.6;
    
    X = [1195; 1197; 1202; 1193; 1195; 1196; 1195; 1197; 1202; 1194; 1196; 1198; 1202; 1196; 1197; 1200; 1195];
    Y = [1197; 1199; 1198; 1201; 1202; 1196; 1197; 1201; 1203; 1198; 1196; 1197; 1203; 1199; 1196; 1204; 1199];
    
    alpha = 0.03;
    
    [~, ~, ~, ~, H] = UTest2D(X,Y,sigma1,sigma2,alpha,'both');
    
    if(H == 1)
        [~, ~, ~, ~, H] = UTest2D(X,Y,sigma1,sigma2,alpha,'left');
        if(H == 1)
            disp('A masodik gep csoveinek atlaghossza nagyobb');
        else
            disp('Az elso gep csoveinek atlaghossza nagyobb');
        end
    else
        disp('A ket gep csoveinek atlaghossza egyenlo');
    end

end